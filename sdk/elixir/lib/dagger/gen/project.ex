# This file generated by `mix dagger.gen`. Please DO NOT EDIT.
defmodule Dagger.Project do
  @moduledoc "A collection of Dagger resources that can be queried and invoked."
  use Dagger.QueryBuilder
  @type t() :: %__MODULE__{}
  defstruct [:selection, :client]

  (
    @doc "Commands provided by this project"
    @spec commands(t()) :: [Dagger.ProjectCommand.t()]
    def commands(%__MODULE__{} = project) do
      selection = select(project.selection, "commands")
      execute(selection, project.client)
    end
  )

  (
    @doc "A unique identifier for this project."
    @spec id(t()) :: Dagger.Project.t()
    def id(%__MODULE__{} = project) do
      selection = select(project.selection, "id")
      execute(selection, project.client)
    end
  )

  (
    @doc "Initialize this project from the given directory and config path\n\n## Required Arguments\n\n* `source` - \n* `config_path` -"
    @spec load(t(), Dagger.Directory.t(), String.t()) :: Dagger.Project.t()
    def load(%__MODULE__{} = project, source, config_path) do
      selection = select(project.selection, "load")

      (
        {:ok, id} = Dagger.Directory.id(source)
        selection = arg(selection, "source", id)
      )

      selection = arg(selection, "configPath", config_path)
      %Dagger.Project{selection: selection, client: project.client}
    end
  )

  (
    @doc "Name of the project"
    @spec name(t()) :: String.t()
    def name(%__MODULE__{} = project) do
      selection = select(project.selection, "name")
      execute(selection, project.client)
    end
  )
end
