-module(kuberl_v1alpha1_scheduling).

-export([encode/1]).

-export_type([kuberl_v1alpha1_scheduling/0]).

-type kuberl_v1alpha1_scheduling() ::
    #{ 'nodeSelector' => maps:map(),
       'tolerations' => list()
     }.

encode(#{ 'nodeSelector' := NodeSelector,
          'tolerations' := Tolerations
        }) ->
    #{ 'nodeSelector' => NodeSelector,
       'tolerations' => Tolerations
     }.
