{
  "version": "1.1",
  "package": {
    "name": "contadorAsc",
    "version": "0.1",
    "description": "Contador ascendente de 4bits",
    "author": "Carlos Diaz",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "579cff99-2d27-41d4-a20b-262ca8a93ca9",
          "type": "basic.constant",
          "data": {
            "name": "INIT_CNT",
            "value": "4'h2",
            "local": false
          },
          "position": {
            "x": 312,
            "y": 48
          }
        },
        {
          "id": "c299b4e2-ec25-4472-a58c-5dc46056c414",
          "type": "basic.constant",
          "data": {
            "name": "FIN_CNT",
            "value": "4'h5",
            "local": false
          },
          "position": {
            "x": 504,
            "y": 48
          }
        },
        {
          "id": "c1e3529f-d1eb-4ae5-8345-a43512f21577",
          "type": "basic.output",
          "data": {
            "name": "out0",
            "pins": [
              {
                "index": "0",
                "name": "D1",
                "value": "99"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 744,
            "y": 144
          }
        },
        {
          "id": "86492073-e297-4c25-9678-30ab6dd1fa10",
          "type": "basic.code",
          "data": {
            "code": "// INIT_CNT: Valor inicial de la cuenta\n// FIN_CNT: Valor final de la cuenta\n\n// El registro interno inicia su\n// cuenta a partir del valor del\n// parametro INIT_CNT\nreg [3:0] _o = INIT_CNT;\n\nalways @(posedge clk) begin\n    if (en) begin\n        _o <= _o + 1;\n        // cuando _o vale igual que\n        // el parametro FIN_CNT\n        // se \"reinicia\" la cuenta\n        // a partir de INIT_CNT\n        if (_o == FIN_CNT || _o == 4'hFF) begin\n            _o <= INIT_CNT;\n        end\n    end\nend\n\nassign {o3, o2, o1, o0} = _o;\n\n// (tc) terminal count, un clk de ancho a\n// la salida cuando termina _o vale FIN_CNT o 0\nwire tc = ((_o == FIN_CNT || _o == 4'hFF) ? 1 : 0);",
            "params": [
              {
                "name": "INIT_CNT"
              },
              {
                "name": "FIN_CNT"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "en"
                },
                {
                  "name": "clk"
                }
              ],
              "out": [
                {
                  "name": "o0"
                },
                {
                  "name": "o1"
                },
                {
                  "name": "o2"
                },
                {
                  "name": "o3"
                },
                {
                  "name": "tc"
                }
              ]
            }
          },
          "position": {
            "x": 264,
            "y": 192
          }
        },
        {
          "id": "1e21f6ca-9956-475d-a933-5bb01829f464",
          "type": "basic.output",
          "data": {
            "name": "out1",
            "pins": [
              {
                "index": "0",
                "name": "D2",
                "value": "98"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 744,
            "y": 216
          }
        },
        {
          "id": "aa65e0fd-fea6-4cde-bcea-5b09f97848ff",
          "type": "3e6c249e205080168c1bf4ee8dbc33b50653d5f4",
          "position": {
            "x": 72,
            "y": 224
          }
        },
        {
          "id": "e83e3ae9-0616-4a17-a145-f14954f3f6e0",
          "type": "basic.output",
          "data": {
            "name": "out2",
            "pins": [
              {
                "index": "0",
                "name": "D3",
                "value": "97"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 744,
            "y": 288
          }
        },
        {
          "id": "8d6dece9-e3b8-42d4-b8eb-386c90440923",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "21"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 72,
            "y": 352
          }
        },
        {
          "id": "1f036705-53b5-4833-83ed-adf0a7bf3b98",
          "type": "basic.output",
          "data": {
            "name": "out3",
            "pins": [
              {
                "index": "0",
                "name": "TR8",
                "value": "117"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 744,
            "y": 360
          }
        },
        {
          "id": "a9409df4-b096-4ad0-a1c6-c6eb9bfa1d89",
          "type": "basic.output",
          "data": {
            "name": "tc",
            "pins": [
              {
                "index": "0",
                "name": "D4",
                "value": "96"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 744,
            "y": 432
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "86492073-e297-4c25-9678-30ab6dd1fa10",
            "port": "o0"
          },
          "target": {
            "block": "c1e3529f-d1eb-4ae5-8345-a43512f21577",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "86492073-e297-4c25-9678-30ab6dd1fa10",
            "port": "o1"
          },
          "target": {
            "block": "1e21f6ca-9956-475d-a933-5bb01829f464",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "86492073-e297-4c25-9678-30ab6dd1fa10",
            "port": "o2"
          },
          "target": {
            "block": "e83e3ae9-0616-4a17-a145-f14954f3f6e0",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "86492073-e297-4c25-9678-30ab6dd1fa10",
            "port": "o3"
          },
          "target": {
            "block": "1f036705-53b5-4833-83ed-adf0a7bf3b98",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "86492073-e297-4c25-9678-30ab6dd1fa10",
            "port": "tc"
          },
          "target": {
            "block": "a9409df4-b096-4ad0-a1c6-c6eb9bfa1d89",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "579cff99-2d27-41d4-a20b-262ca8a93ca9",
            "port": "constant-out"
          },
          "target": {
            "block": "86492073-e297-4c25-9678-30ab6dd1fa10",
            "port": "INIT_CNT"
          }
        },
        {
          "source": {
            "block": "c299b4e2-ec25-4472-a58c-5dc46056c414",
            "port": "constant-out"
          },
          "target": {
            "block": "86492073-e297-4c25-9678-30ab6dd1fa10",
            "port": "FIN_CNT"
          }
        },
        {
          "source": {
            "block": "8d6dece9-e3b8-42d4-b8eb-386c90440923",
            "port": "out"
          },
          "target": {
            "block": "86492073-e297-4c25-9678-30ab6dd1fa10",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "aa65e0fd-fea6-4cde-bcea-5b09f97848ff",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "86492073-e297-4c25-9678-30ab6dd1fa10",
            "port": "en"
          }
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
    "3e6c249e205080168c1bf4ee8dbc33b50653d5f4": {
      "package": {
        "name": "Bit 1",
        "version": "1.0.0",
        "description": "Assign 1 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.218%22%20y=%22315.455%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.218%22%20y=%22315.455%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "type": "basic.code",
              "data": {
                "code": "// Bit 1\n\nassign v = 1'b1;",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "v"
                    }
                  ]
                }
              },
              "position": {
                "x": 96,
                "y": 96
              }
            },
            {
              "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 192
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "port": "v"
              },
              "target": {
                "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "port": "in"
              }
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
      }
    }
  }
}