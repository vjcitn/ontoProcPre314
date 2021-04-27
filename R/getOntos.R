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
#' @note getCellLineOnto loads ontoRda/cellLineOnto.rda produced from clo.owl at https://raw.githubusercontent.com/CLO-ontology/CLO/master/src/ontology/clo.owl  4/22/21,
#' ROBOT version 1.81 was used to convert OWL to OBO.
#' @export
getCellLineOnto = function() get(load(system.file(
      "ontoRda/cellLineOnto.rda", package="ontoProc")))

#' @rdname getCellOnto
#' @aliases getEFOOnto
#' @note getEFOOnto  loads ontoRda/efoOnto.rda produced from efo.owl at https://www.ebi.ac.uk/efo/efo.obo 04/15/2021,
#' ROBOT version 1.81 was used to convert OWL to OBO.
#' @export
getEFOOnto = function() get(load(system.file(
      "ontoRda/efoOnto.rda", package="ontoProc")))



#' @rdname getCellOnto
#' @aliases getChebiLite
#' @note getChebiLite  loads ontoRda/chebi_lite.rda produced from chebi_lite.obo at http://purl.obolibrary.org/obo/chebi/chebi_lite.obo 04/01/2021,
#' @export
getChebiLite = function() get(load(system.file(
      "ontoRda/chebi_lite.rda", package="ontoProc")))


#' @rdname getCellOnto
#' @aliases getCellosaurusOnto
#' @note getCellosaurusOnto loads ontoRda/cellosaurusOnto.rda produced from cellosaurus.obo at https://ftp.expasy.org/databases/cellosaurus/cellosaurus.obo  02/25/2021,
#' @export
getCellosaurusOnto = function() get(load(system.file(
      "ontoRda/cellosaurusOnto.rda", package="ontoProc")))



#' @rdname getCellOnto
#' @aliases getUBERON
#' @note getUBERON  loads ontoRda/uberon.rda produced from uberon.owl at https://raw.githubusercontent.com/obophenotype/uberon/master/uberon.owl 04/24/2021,
#' ROBOT version 1.81 was used to convert OWL to OBO.
#' @export
getUBERON = function() get(load(system.file(
      "ontoRda/uberon.rda", package="ontoProc")))

#' @rdname getCellOnto
#' @aliases getChebiOnto
#' @note getChebiOnto  loads ontoRda/chebi_full.rda produced from chebi.obo at http://purl.obolibrary.org/obo/chebi.obo  04/01/2021,
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
#' @note getDiseaseOnto  loads ontoRda/diseaseOnto.rda produced from HumanDO.obo  at https://raw.githubusercontent.com/DiseaseOntology/HumanDiseaseOntology/master/src/ontology/HumanDO.obo  04/16/2021,
#' @export
getDiseaseOnto = function() get(load(system.file(
      "ontoRda/diseaseOnto.rda", package="ontoProc")))


#' @rdname getCellOnto
#' @aliases getGeneOnto
#' @note getGeneOnto loads ontoRda/goOnto.rda produced from go.obo at http://purl.obolibrary.org/obo/go.obo 02/03/2021,
#' @export
getGeneOnto = function() get(load(system.file(
      "ontoRda/goOnto.rda", package="ontoProc")))

#' @rdname getCellOnto
#' @aliases getHCAOnto
#' @note getHCAOnto loads ontoRda/hcaOnto.rda produced from hcao.owl at https://github.com/HumanCellAtlas/ontology/releases/tag/1.0.6 2/11/2019,
#' python pronto was used to convert OWL to OBO.
#' @export
getHCAOnto = function() get(load(system.file(
      "ontoRda/hcaOnto.rda", package="ontoProc")))

#' @rdname getCellOnto
#' @aliases getPROnto
#' @note getPROnto loads ontoRda/PRonto.rda, produced from http://purl.obolibrary.org/obo/pr.obo 'reasoned' ontology from OBO foundry, 02-08-2019.
#' In contrast to other ontologies, this is imported via get_OBO with
#' `extract_tags='minimal'`.
#' @export
getPROnto = function() get(load(system.file(
      "ontoRda/PROonto.rda", package="ontoProc")))


#' @rdname getCellOnto
#' @aliases getPATOnto
#' @note getPATOnto loads ontoRda/patoOnto.rda, produced from https://raw.githubusercontent.com/pato-ontology/pato/master/pato.obo from OBO foundry, 02-08-2019.
#' @export
getPATOnto = function() get(load(system.file(
      "ontoRda/patoOnto.rda", package="ontoProc")))


#' @rdname getCellOnto
#' @aliases getCaroOnto
#' @note getCaroOnto loads ontoRda/caro.rda, produced from https://raw.githubusercontent.com/obophenotype/caro/master/src/ontology/caro.owl , 04-22-2021.
#' @export
getCaroOnto = function() get(load(system.file(
  "ontoRda/caro.rda", package="ontoProc")))