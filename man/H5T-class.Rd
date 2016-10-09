% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/R6Classes_H5T.R
\docType{class}
\name{H5T-class}
\alias{H5T}
\alias{H5T-class}
\title{Class for HDF5 datatypes.}
\value{
Object of class \code{\link{H5T}}.
}
\description{
This is the base class for all datatypes, but most have a specialised class.
This class represents an HDF5 datatype. It inherits all functions of the
\code{\link{H5RefClass-class}}. It is also the base class for many other classes well, specifically
\describe{
\item{Integer}{\code{\link{H5T_INTEGER-class}}}
\item{Bitfield}{\code{\link{H5T_BITFIELD-class}} (currently identical to the integer class)}
\item{Float}{\code{\link{H5T_FLOAT-class}}}
\item{Enum}{\code{\link{H5T_ENUM-class}}}
\item{Compound}{\code{\link{H5T_COMPOUND-class}}}
\item{String}{\code{\link{H5T_STRING-class}}}
\item{Complex}{\code{\link{H5T_COMPLEX-class}}}
\item{Array}{\code{\link{H5T_ARRAY-class}}}
\item{Variable Length}{\code{\link{H5T_VLEN-class}}}
}
}
\section{Methods}{

\describe{
\item{\code{new}}{

\strong{Usage:}
\preformatted{new(id)}
Internal use only}

\item{\code{get_class}}{

\strong{Usage:}
\preformatted{get_class()}
This function implements the HDF5-API function H5Tget_class.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-GetClass} for details.}

\item{\code{get_size}}{

\strong{Usage:}
\preformatted{get_size(...)}
This function implements the HDF5-API function H5Tget_size.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-GetSize} for details.
Parameter \code{...} is being ignored.}

\item{\code{set_size}}{

\strong{Usage:}
\preformatted{set_size(size)}
This function implements the HDF5-API function H5Tset_size.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-SetSize} for details.}

\item{\code{set_precision}}{

\strong{Usage:}
\preformatted{set_precision(precision)}
This function implements the HDF5-API function H5Tset_precision.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-SetPrecision} for details.}

\item{\code{get_precision}}{

\strong{Usage:}
\preformatted{get_precision()}
This function implements the HDF5-API function H5Tget_precision.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-GetPrecision} for details.}

\item{\code{set_order}}{

\strong{Usage:}
\preformatted{set_order(order)}
This function implements the HDF5-API function H5Tset_order.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-SetOrder} for details.}

\item{\code{get_order}}{

\strong{Usage:}
\preformatted{get_order()}
This function implements the HDF5-API function H5Tget_order.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-GetOrder} for details.}

\item{\code{set_offset}}{

\strong{Usage:}
\preformatted{set_offset(offset)}
This function implements the HDF5-API function H5Tset_offset.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-SetOffset} for details.}

\item{\code{get_offset}}{

\strong{Usage:}
\preformatted{get_offset()}
This function implements the HDF5-API function H5Tget_offset.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-GetOffset} for details.}

\item{\code{set_pad}}{

\strong{Usage:}
\preformatted{set_pad(pad)}
This function implements the HDF5-API function H5Tset_pad.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-SetPad} for details.}

\item{\code{get_pad}}{

\strong{Usage:}
\preformatted{get_pad()}
This function implements the HDF5-API function H5Tget_pad.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-GetPad} for details.}

\item{\code{copy}}{

\strong{Usage:}
\preformatted{copy()}
This function implements the HDF5-API function H5Tcopy.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-Copy} for details.}

\item{\code{is_committed}}{

\strong{Usage:}
\preformatted{is_committed()}
This function implements the HDF5-API function H5Tcommitted.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-Committed} for details.}

\item{\code{equal}}{

\strong{Usage:}
\preformatted{equal(dtype)}
This function implements the HDF5-API function H5Tequal.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-Equal} for details.}

\item{\code{is_vlen}}{

\strong{Usage:}
\preformatted{is_vlen()}
This function detects if the underlying type is H5T_VLEN or a variable length string. This is used to know if
after reading a dataset, memory has to be freed}

\item{\code{detect_class}}{

\strong{Usage:}
\preformatted{detect_class(dtype_class)}
This function implements the HDF5-API function H5Tdetect_class.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-DetectClass} for details.}

\item{\code{get_native_type}}{

\strong{Usage:}
\preformatted{get_native_type(direction = h5const$H5T_DIR_ASCEND)}
This function implements the HDF5-API function H5Tget_native_type.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-GetNativeType} for details.}

\item{\code{get_create_plist}}{

\strong{Usage:}
\preformatted{get_create_plist()}
This function implements the HDF5-API function H5Tget_create_plist.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5T.html#Datatype-GetCreatePlist} for details.}

\item{\code{to_text}}{

\strong{Usage:}
\preformatted{to_text(lang_type = h5const$H5LT_DDL)}
This function implements the HDF5-API function H5LTdtype_to_text.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/HL/RM_H5LT.html#H5LTdtype_to_text} for details.}

\item{\code{obj_info}}{

\strong{Usage:}
\preformatted{obj_info(remove_internal_use_only = TRUE)}
This function implements the HDF5-API function H5Oget_info.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5O.html#Object-GetInfo} for details.}

\item{\code{create_attr}}{

\strong{Usage:}
\preformatted{create_attr(attr_name, robj = NULL, dtype = NULL, space = NULL)}
This function implements the HDF5-API function H5Acreate2.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-Create2} for details.}

\item{\code{attr_open}}{

\strong{Usage:}
\preformatted{attr_open(attr_name)}
This function implements the HDF5-API function H5Aopen.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-Open} for details.}

\item{\code{create_attr_by_name}}{

\strong{Usage:}
\preformatted{create_attr_by_name(attr_name, obj_name, robj = NULL, dtype = NULL,
  space = NULL, link_access_pl = h5const$H5P_DEFAULT)}
This function implements the HDF5-API function H5Acreate_by_name.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-CreateByName} for details.}

\item{\code{attr_open_by_name}}{

\strong{Usage:}
\preformatted{attr_open_by_name(attr_name, obj_name, link_access_pl = h5const$H5P_DEFAULT)}
This function implements the HDF5-API function H5Aopen_by_name.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-OpenByName} for details.}

\item{\code{attr_open_by_idx}}{

\strong{Usage:}
\preformatted{attr_open_by_idx(n, obj_name, idx_type = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE, link_access_pl = h5const$H5P_DEFAULT)}
This function implements the HDF5-API function H5Aopen_by_idx.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-OpenByIdx} for details.}

\item{\code{attr_exists_by_name}}{

\strong{Usage:}
\preformatted{attr_exists_by_name(attr_name, obj_name, link_access_pl = h5const$H5P_DEFAULT)}
This function implements the HDF5-API function H5Aexists_by_name.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-ExistsByName} for details.}

\item{\code{attr_exists}}{

\strong{Usage:}
\preformatted{attr_exists(attr_name)}
This function implements the HDF5-API function H5Aexists.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-Exists} for details.}

\item{\code{attr_rename_by_name}}{

\strong{Usage:}
\preformatted{attr_rename_by_name(old_attr_name, new_attr_name, obj_name,
  link_access_pl = h5const$H5P_DEFAULT)}
This function implements the HDF5-API function H5Arename_by_name.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-RenameByName} for details.}

\item{\code{attr_rename}}{

\strong{Usage:}
\preformatted{attr_rename(old_attr_name, new_attr_name)}
This function implements the HDF5-API function H5Arename.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-Rename} for details.}

\item{\code{attr_delete}}{

\strong{Usage:}
\preformatted{attr_delete(attr_name)}
This function implements the HDF5-API function H5Adelete.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-Delete} for details.}

\item{\code{attr_delete_by_name}}{

\strong{Usage:}
\preformatted{attr_delete_by_name(attr_name, obj_name, link_access_pl = h5const$H5P_DEFAULT)}
This function implements the HDF5-API function H5Adelete_by_name.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-DeleteByName} for details.}

\item{\code{attr_delete_by_idx}}{

\strong{Usage:}
\preformatted{attr_delete_by_idx(n, obj_name, idx_type = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE, link_access_pl = h5const$H5P_DEFAULT)}
This function implements the HDF5-API function H5Adelete_by_idx.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-DeleteByIdx} for details.}

\item{\code{attr_info_by_name}}{

\strong{Usage:}
\preformatted{attr_info_by_name(attr_name, obj_name, link_access_pl = h5const$H5P_DEFAULT)}
This function implements the HDF5-API function H5Aget_info_by_name.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-GetInfoByName} for details.}

\item{\code{attr_info_by_idx}}{

\strong{Usage:}
\preformatted{attr_info_by_idx(n, obj_name, idx_type = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE, link_access_pl = h5const$H5P_DEFAULT)}
This function implements the HDF5-API function H5Aget_info_by_idx.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-GetInfoByIdx} for details.}

\item{\code{attr_name_by_idx}}{

\strong{Usage:}
\preformatted{attr_name_by_idx(n, obj_name, idx_type = h5const$H5_INDEX_NAME,
  order = h5const$H5_ITER_NATIVE, link_access_pl = h5const$H5P_DEFAULT)}
This function implements the HDF5-API function H5Aget_name_by_idx.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5A.html#Annot-GetNameByIdx} for details.}

\item{\code{get_file_name}}{

\strong{Usage:}
\preformatted{get_file_name()}
This function implements the HDF5-API function H5Fget_name.
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5F.html#File-GetName} for details.}

\item{\code{create_reference}}{

\strong{Usage:}
\preformatted{create_reference(name = ".", space = NULL)}
This function implements the HDF5-API function H5Rcreate. If \code{space=NULL} then a \code{H5R_OBJECT} reference
is created, otherwise a \code{H5R_DATASET_REGION} reference
Please see the documentation at \url{https://www.hdfgroup.org/HDF5/doc/RM/RM_H5R.html#Reference-Create} for details.}
}}
\author{
Holger Hoefling
}
\seealso{
H5Class_overview
}
