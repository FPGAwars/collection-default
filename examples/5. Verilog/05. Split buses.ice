{
  "version": "1.1",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "02054c3e-70b4-428b-bdb8-cec60d1c3523",
          "type": "basic.info",
          "data": {
            "info": "An 8-bit binary counter, using an 8-bit bus splitted\ninto two 4-bit buses"
          },
          "position": {
            "x": 56,
            "y": 88
          },
          "size": {
            "width": 448,
            "height": 48
          }
        },
        {
          "id": "06be8426-370b-4e79-9878-306053d394e5",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "LED7",
                "value": "104"
              },
              {
                "index": "2",
                "name": "LED6",
                "value": "102"
              },
              {
                "index": "1",
                "name": "LED5",
                "value": "101"
              },
              {
                "index": "0",
                "name": "LED4",
                "value": "99"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 952,
            "y": 88
          }
        },
        {
          "id": "88be0187-a7f9-4d35-b1fd-a7bdff51eeb2",
          "type": "basic.code",
          "data": {
            "code": "reg [7:0] value;\n\nalways @(posedge clk)\n  value <= value + 1;\n\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "value",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 232,
            "y": 184
          },
          "size": {
            "width": 240,
            "height": 128
          }
        },
        {
          "id": "90f650b3-5de5-4033-be40-c7cbd1a69804",
          "type": "8527ab6e7f1bb2d07fd17b11ffc13165e95df2aa",
          "position": {
            "x": 88,
            "y": 216
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "86e365bd-8128-406b-975d-4155719a1553",
          "type": "basic.code",
          "data": {
            "code": "assign MSB = in[7:4];\nassign lsb = in[3:0];",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "MSB",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "lsb",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            }
          },
          "position": {
            "x": 600,
            "y": 216
          },
          "size": {
            "width": 240,
            "height": 64
          }
        },
        {
          "id": "f573d0e3-d8d4-4ef5-b98c-2da12a050948",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "LED3",
                "value": "98"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "97"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "96"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 952,
            "y": 256
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "90f650b3-5de5-4033-be40-c7cbd1a69804",
            "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
          },
          "target": {
            "block": "88be0187-a7f9-4d35-b1fd-a7bdff51eeb2",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "88be0187-a7f9-4d35-b1fd-a7bdff51eeb2",
            "port": "value"
          },
          "target": {
            "block": "86e365bd-8128-406b-975d-4155719a1553",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "86e365bd-8128-406b-975d-4155719a1553",
            "port": "MSB"
          },
          "target": {
            "block": "06be8426-370b-4e79-9878-306053d394e5",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "86e365bd-8128-406b-975d-4155719a1553",
            "port": "lsb"
          },
          "target": {
            "block": "f573d0e3-d8d4-4ef5-b98c-2da12a050948",
            "port": "in"
          },
          "size": 4
        }
      ]
    },
    "state": {
      "pan": {
        "x": 0,
        "y": 0
      },
      "zoom": 1
    }
  },
  "dependencies": {
    "8527ab6e7f1bb2d07fd17b11ffc13165e95df2aa": {
      "package": {
        "name": "Prescaler22",
        "version": "0.1",
        "description": "22-bits prescaler",
        "author": "Juan Gonzalez (Obijuan)",
        "image": ""
      },
      "design": {
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
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": 96,
                "y": 160
              }
            },
            {
              "id": "fbac31ef-cc98-4408-a5e8-6b7c115efcb0",
              "type": "2e70855674b893bd8b7ee5beda5ccded7b398def",
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
                "name": ""
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
                "block": "001a65af-f50d-4dbf-be8a-e0a3bb11df68",
                "port": "constant-out"
              },
              "target": {
                "block": "fbac31ef-cc98-4408-a5e8-6b7c115efcb0",
                "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
              }
            },
            {
              "source": {
                "block": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
                "port": "out"
              },
              "target": {
                "block": "fbac31ef-cc98-4408-a5e8-6b7c115efcb0",
                "port": "e19c6f2f-5747-4ed1-87c8-748575f0cc10"
              }
            },
            {
              "source": {
                "block": "fbac31ef-cc98-4408-a5e8-6b7c115efcb0",
                "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
              },
              "target": {
                "block": "7e07d449-6475-4839-b43e-8aead8be2aac",
                "port": "in"
              }
            }
          ]
        },
        "state": {
          "pan": {
            "x": 20,
            "y": 0
          },
          "zoom": 1
        }
      }
    },
    "2e70855674b893bd8b7ee5beda5ccded7b398def": {
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
                "name": "clk",
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
            "x": 20,
            "y": 0
          },
          "zoom": 1
        }
      }
    }
  }
}