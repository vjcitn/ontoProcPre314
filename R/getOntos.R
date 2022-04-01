# utility for caching recent obo for cell ontology
add_cache_cl_simple = function(cache = BiocFileCache::BiocFileCache(),
     target = "https://raw.githubusercontent.com/obophenotype/cell-ontology/master/cl-simple.obo") {
 BiocFileCache::bfcadd(cache, target)
}

#' load ontologies that may include non-ascii strings and therefore cannot be in data folder
#' useNew
#' @examples
#' co = getCellOnto()
#' co
#' clo = getCellLineOnto()
#' length(clo$id)
#' che = getChebiLite()
#' length(che$id)
#' efo = getEFOOnto()
#' length(efo$id)
#' @return instance of ontology_index (S3) from ontologyIndex
#' @note Provenance information is kept in the form
#' of excerpts of top records in `dir(system.file("obo", package="ontoProc"), full=TRUE)`


#' @rdname getCellOnto
#' @aliases getCellOnto
#' @note getCellOnto  loads ontoRda/cellOnto.rda.rda produced from cl.owl at https://raw.githubusercontent.com/obophenotype/cell-ontology/master/cl.owl  04/24/2021,
#' ROBOT version 1.81 was used to convert OWL to OBO.
#' @export
getCellOnto= function() get(load(system.file(
  "ontoRda/cellOnto.rda", package="ontoProc")))
 
#' @rdname getCellOnto
#' @aliases getCellLineOnto
#' @note getCellLineOnto loads ontoRda/cellLineOnto.rda produced from clo.owl at https://raw.githubusercontent.com/CLO-ontology/CLO/master/src/ontology/clo.owl 03-07-2022 ,
#' ROBOT version 1.81 was used to convert OWL to OBO.
#' @export
getCellLineOnto = function() get(load(system.file(
      "ontoRda/cellLineOnto.rda", package="ontoProc")))

#' @rdname getCellOnto
#' @aliases getEFOOnto
#' @note getEFOOnto  loads ontoRda/efoOnto.rda produced from efo.obo at https://www.ebi.ac.uk/efo/efo.obo 03/08/2022
#' @export
getEFOOnto = function() get(load(system.file(
      "ontoRda/efoOnto.rda", package="ontoProc")))



#' @rdname getCellOnto
#' @aliases getChebiLite
#' @note getChebiLite  loads ontoRda/chebi_lite.rda produced from chebi_lite.obo at http://ftp.ebi.ac.uk/pub/databases/chebi/ontology/chebi_lite.obo 03/07/2022,
#' @export
getChebiLite = function() get(load(system.file(
      "ontoRda/chebi_lite.rda", package="ontoProc")))


#' @rdname getCellOnto
#' @aliases getCellosaurusOnto
#' @note getCellosaurusOnto loads ontoRda/cellosaurusOnto.rda produced from cellosaurus.obo at https://ftp.expasy.org/databases/cellosaurus/cellosaurus.obo  03/07/2022,
#' @export
getCellosaurusOnto = function() get(load(system.file(
      "ontoRda/cellosaurusOnto.rda", package="ontoProc")))



#' @rdname getCellOnto
#' @aliases getUBERON
#' @note getUBERON  loads ontoRda/uberon.rda produced from uberon.owl at https://raw.githubusercontent.com/obophenotype/uberon/master/uberon.owl 03/08/2022,
#' ROBOT version 1.81 was used to convert OWL to OBO.
#' @export
getUBERON = function() get(load(system.file(
      "ontoRda/uberon.rda", package="ontoProc")))

#' @rdname getCellOnto
#' @aliases getChebiOnto
#' @note getChebiOnto  loads ontoRda/chebi_full.rda produced from chebi.obo at http://ftp.ebi.ac.uk/pub/databases/chebi/ontology/chebi.obo 03/07/2022,
#' @export
getChebiOnto = function() get(load(system.file(
      "ontoRda/chebi_full.rda", package="ontoProc")))

#' @rdname getCellOnto
#' @aliases getOncotreeOnto
#' @note getOncotreeOnto loads ontoRda/oncotree.rda
#' @return instance of ontology_index (S3) from ontologyIndex
#' @export
getOncotreeOnto = function() get(load(system.file(
      "ontoRda/oncotree.rda", package="ontoProc")))


#' @rdname getCellOnto
#' @aliases getDiseaseOnto
#' @note getDiseaseOnto  loads ontoRda/diseaseOnto.rda produced from HumanDO.obo  at https://raw.githubusercontent.com/DiseaseOntology/HumanDiseaseOntology/master/src/ontology/HumanDO.obo  03/07/2022,
#' @export
getDiseaseOnto = function() get(load(system.file(
      "ontoRda/diseaseOnto.rda", package="ontoProc")))


#' @rdname getCellOnto
#' @aliases getGeneOnto
#' @note getGeneOnto loads ontoRda/goOnto.rda produced from go.obo at http://purl.obolibrary.org/obo/go.obo 03/08/2022,
#' @export
getGeneOnto = function() get(load(system.file(
      "ontoRda/goOnto.rda", package="ontoProc")))

#' @rdname getCellOnto
#' @aliases getHCAOnto
#' @note getHCAOnto loads ontoRda/hcaOnto.rda produced from hcao.owl at https://www.ebi.ac.uk/ols/ontologies/hcao 03/08/2022,
#' python pronto was used to convert OWL to OBO.
#' @export
getHCAOnto = function() get(load(system.file(
      "ontoRda/hcaoOnto.rda", package="ontoProc")))

#' @rdname getCellOnto
#' @aliases getPROnto_reasoned
#' @note getPROnto_reasoned loads ontoRda/PROonto_reasoned.rda, produced from https://proconsortium.org/download/current/pro_reasoned.obo' ontology from OBO foundry, 02-07-2022.
#' In contrast to other ontologies, this is imported via get_OBO with
#' `extract_tags='minimal'`.
#' @export
getPROnto_reasoned = function() get(load(system.file(
      "ontoRda/PROnto_reasoned.rda", package="ontoProc")))

#' @rdname getCellOnto
#' @aliases getPROnto_nonreasoned
#' @note getPROnto_nonreasoned loads ontoRda/PROonto_nonreasoned.rda, produced from https://proconsortium.org/download/current/pro_nonreasoned.obo' ontology from OBO foundry, 02-07-2022.
#' In contrast to other ontologies, this is imported via get_OBO with
#' `extract_tags='minimal'`.
#' @export
getPROnto_nonreasoned = function() get(load(system.file(
  "ontoRda/PROnto_nonreasoned.rda", package="ontoProc")))


#' @rdname getCellOnto
#' @aliases getPATOnto
#' @note getPATOnto loads ontoRda/patoOnto.rda, produced from https://raw.githubusercontent.com/pato-ontology/pato/master/pato.obo from OBO foundry, 03/11/2022.
#' @export
getPATOnto = function() get(load(system.file(
      "ontoRda/patoOnto.rda", package="ontoProc")))


#' @rdname getCellOnto
#' @aliases getMondoOnto
#' @export
getMondoOnto = function() get(load(system.file(
      "ontoRda/mondo_2021_04_07.rda", package="ontoProc")))

