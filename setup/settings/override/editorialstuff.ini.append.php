<?php /* #?ini charset="utf-8"?

[AvailableFactories]
Identifiers[]
Identifiers[]=seduta
Identifiers[]=punto
Identifiers[]=allegati_seduta
Identifiers[]=invitato
Identifiers[]=invito
Identifiers[]=politico
Identifiers[]=tecnico
Identifiers[]=materia
Identifiers[]=convocazione_seduta
Identifiers[]=votazione
Identifiers[]=osservazioni
Identifiers[]=referentelocale
Identifiers[]=areacollaborativa
Identifiers[]=organo
Identifiers[]=proposta
#Identifiers[]=audizione
#Identifiers[]=designazione
#Identifiers[]=parere
Identifiers[]=responsabilearea
Identifiers[]=cda_evento
Identifiers[]=cda_documento
Identifiers[]=verbale

[Settings]
DefaultFactoryClassName=OpenPAConsiglioDefaultFactory

[verbale]
ClassName=VerbaleFactory
ClassIdentifier=verbale
RepositoryNodes[]=1
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Verbali
StateGroup=verbale
States[draft]=Bozza
States[wip]=In lavorazione
States[approved]=Approvato


[cda_evento]
ClassName=CdaEventoFactory
CreationButtonText=Crea nuovo evento
ClassIdentifier=event
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Eventi

[cda_documento]
ClassName=CdaDocumentoFactory
CreationButtonText=Crea nuovo documento
ClassIdentifier=file
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Documenti

[responsabilearea]
ClassIdentifier=user
CreationRepositoryNode=
BrowseStartNode=12
BrowseButtonText=Seleziona responsabile
RepositoryNodes[]
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Responsabili d'area

[proposta]
ClassName=PropostaFactory
ClassIdentifier=proposta_punto
CreationRepositoryNode=
CreationButtonText=Crea nuova proposta
RepositoryNodes[]
AttributeIdentifiers[]
StateGroup=proposta
States[draft]=In lavorazione
States[pending]=In attesa di approvazione
States[approved]=Approvata
States[rejected]=Rifiutata
States[online]=Inserita in odg
Name=Elenco proposte ordine del giorno
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl

[organo]
ClassName=OrganoFactory
CreationButtonText=Crea nuovo organo sociale
ClassIdentifier=organo_sociale
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Elenco Organi sociali

[areacollaborativa]
ClassName=AreaCollaborativaFactory
CreationButtonText=Crea nuova area
ClassIdentifier=openpa_consiglio_collaboration_area
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Elenco Aree collaborative

[seduta]
ClassName=SedutaFactory
ClassIdentifier=seduta
CreationRepositoryNode=
CreationButtonText=Crea nuova seduta
RepositoryNodes[]
AttributeIdentifiers[]
StateGroup=seduta
States[draft]=Non visibile
States[pending]=Non confermata
States[published]=Confermata
States[sent]=Invio convocazione
States[in_progress]=In corso
States[closed]=Conclusa
Name=Elenco sedute
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl

[punto]
ClassName=PuntoFactory
ClassIdentifier=punto
#CreationButtonText=Crea nuovo punto
AttributeIdentifiers[]
StateGroup=punto
States[proposal]=Proposta
States[pending]=In attesa di approvazione
States[draft]=Bozza
States[published]=Pubblicato
States[in_progress]=In corso
States[closed]=Concluso
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Elenco punti

[audizione]
ClassName=AudizioneFactory
ClassIdentifier=audizione
CreationButtonText=Crea nuova audizione
CreationRepositoryNode=
RepositoryNodes[]
AttributeIdentifiers[]
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Elenco audizioni
StateGroup=audizione
States[draft]=Non visibile
States[pending]=Non confermata
States[published]=Confermata

[allegati_seduta]
Name=Allegati alle sedute
ClassName=AllegatoFactory
ClassIdentifier=allegato_seduta
CreationRepositoryNode=
CreationButtonText=Crea nuovo allegato
RepositoryNodes[]
StateGroup=visibilita_allegato_seduta
States[consiglieri]=Consiglieri
States[referenti]=Referenti all'argomento
States[pubblico]=Pubblico
AttributeIdentifiers[]
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl

[osservazioni]
Name=Osservazioni ai punti delle sedute
ClassName=OsservazioneFactory
ClassIdentifier=osservazione
CreationRepositoryNode=
CreationButtonText=Crea nuova osservazione
RepositoryNodes[]
StateGroup=visibilita_osservazione_seduta
States[consiglieri]=Consiglieri
States[referenti]=Referenti all'argomento
AttributeIdentifiers[]
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl

[convocazione_seduta]
Name=Convocazioni seduta
ClassName=ConvocazioneSedutaFactory
ClassIdentifier=convocazione_seduta
RepositoryNodes[]=1
AttributeIdentifiers[]
PersistentVariable[top_menu]=false

[invitato]
ClassIdentifier=invitato
ClassName=InvitatoFactory
CreationButtonText=Crea nuovo invitato
AttributeIdentifiers[]
CreationRepositoryNode=
RepositoryNodes[]
Name=Invitati alle sedute
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl

[invito]
ClassIdentifier=invito
ClassName=InvitoFactory
AttributeIdentifiers[]
RepositoryNodes[]1
Name=Inviti a sedute
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl

[politico]
ClassIdentifier=user
ClassName=PoliticoFactory
CreationRepositoryNode=
BrowseStartNode=12
BrowseButtonText=Seleziona politico
RepositoryNodes[]
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Politici
Locations[]
Locations[consiglio]=
Locations[giunta]=

[tecnico]
ClassIdentifier=user
ClassName=TecnicoFactory
CreationRepositoryNode=
BrowseStartNode=12
BrowseButtonText=Seleziona tecnico
RepositoryNodes[]
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Tecnici

[materia]
ClassIdentifier=materia
ClassName=MateriaFactory
CreationButtonText=Crea nuova materia
CreationRepositoryNode=
RepositoryNodes[]
AttributeIdentifiers[]
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Elenco materie

[votazione]
ClassIdentifier=votazione
CreationButtonText=Crea votazione
ClassName=VotazioneFactory
CreationRepositoryNode=
RepositoryNodes[]
StateGroup=stato_votazione
States[pending]=In attesa
States[in_progress]=In corso
States[closed]=Conclusa
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Votazioni
VotazioneResultHandlers[]
VotazioneResultHandlers[ordinaria]=OpenPAConsiglioVotazioneResultHandlerOrdinaria
VotazioneResultHandlers[intesa]=OpenPAConsiglioVotazioneResultHandlerIntesa
VotazioneResultHandlersAlias[]

[designazione]
ClassIdentifier=designazione
CreationButtonText=Crea nuova designazione
CreationRepositoryNode=
RepositoryNodes[]
AttributeIdentifiers[]
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Elenco designazioni

[parere]
ClassIdentifier=parere
CreationButtonText=Crea nuovo parere
CreationRepositoryNode=
RepositoryNodes[]
AttributeIdentifiers[]
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Elenco pareri

[referentelocale]
ClassIdentifier=user
ClassName=ReferenteLocaleFactory
CreationButtonText=Crea nuovo referente locale
CreationRepositoryNode=
RepositoryNodes[]
PersistentVariable[top_menu]=true
PersistentVariable[topmenu_template_uri]=design:consiglio/page_topmenu.tpl
Name=Referenti locali