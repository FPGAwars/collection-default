{
  "version": "1.1",
  "package": {
    "name": "Prescaler22",
    "version": "0.1",
    "description": "22-bits prescaler",
    "author": "Juan Gonzalez (Obijuan)",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "001a65af-f50d-4dbf-be8a-e0a3bb11df68",
          "type": "basic.constant",
          "data": {
            "name": "N",
            "value": "22",
            "local": true
          },
          "position": {
            "x": 288,
            "y": 48
          }
        },
        {
          "id": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "21"
              }
            ],
            "virtual": true,
            "clock": true
          },
          "position": {
            "x": 96,
            "y": 160
          }
        },
        {
          "id": "9f0ae367-e98e-4865-9e9f-458e189e7f0d",
          "type": "9ff8e584975c5f01bda05511782e93b45a00fa62",
          "position": {
            "x": 288,
            "y": 160
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "7e07d449-6475-4839-b43e-8aead8be2aac",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 440,
            "y": 160
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "9f0ae367-e98e-4865-9e9f-458e189e7f0d",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "7e07d449-6475-4839-b43e-8aead8be2aac",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "001a65af-f50d-4dbf-be8a-e0a3bb11df68",
            "port": "constant-out"
          },
          "target": {
            "block": "9f0ae367-e98e-4865-9e9f-458e189e7f0d",
            "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
          }
        },
        {
          "source": {
            "block": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
            "port": "out"
          },
          "target": {
            "block": "9f0ae367-e98e-4865-9e9f-458e189e7f0d",
            "port": "e19c6f2f-5747-4ed1-87c8-748575f0cc10"
          }
        }
      ]
    },
    "state": {
      "pan": {
        "x": 277,
        "y": 204
      },
      "zoom": 1
    }
  },
  "dependencies": {
    "9ff8e584975c5f01bda05511782e93b45a00fa62": {
      "package": {
        "name": "Prescaler_N",
        "version": "0.1",
        "description": "Parametric N-bits prescaler",
        "author": "Juan Gonzalez (Obijuan)",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
              "type": "basic.constant",
              "data": {
                "name": "N",
                "value": "22",
                "local": false
              },
              "position": {
                "x": 352,
                "y": 56
              }
            },
            {
              "id": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
              "type": "basic.code",
              "data": {
                "code": "//-- Number of bits of the prescaler\n//parameter N = 22;\n\n//-- divisor register\nreg [N-1:0] divcounter;\n\n//-- N bit counter\nalways @(posedge clk_in)\n  divcounter <= divcounter + 1;\n\n//-- Use the most significant bit as output\nassign clk_out = divcounter[N-1];",
                "params": [
                  {
                    "name": "N"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk_in"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_out"
                    }
                  ]
                }
              },
              "position": {
                "x": 176,
                "y": 176
              },
              "size": {
                "width": 448,
                "height": 224
              }
            },
            {
              "id": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 0,
                "y": 256
              }
            },
            {
              "id": "7e07d449-6475-4839-b43e-8aead8be2aac",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 720,
                "y": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_out"
              },
              "target": {
                "block": "7e07d449-6475-4839-b43e-8aead8be2aac",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
                "port": "out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_in"
              }
            },
            {
              "source": {
                "block": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
                "port": "constant-out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "N"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 42,
            "y": 35.5
          },
          "zoom": 1
        }
      }
    }
  }
}