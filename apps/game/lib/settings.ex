defmodule Game.Settings do
  @moduledoc """
  Settings of the game
  """

  @type t :: %Game.Settings{
          health: integer(),
          tokens: integer(),
          dices: integer(),
          phases: any()
        }
  defstruct health: 15,
            tokens: 0,
            dices: 6,
            phases: %{
              1 => %{module: Phase.Roll, turns: 3},
              2 => %{module: Phase.GodFavor, turns: 1},
              3 => %{module: Phase.Resolution, turns: 1}
            }
end
