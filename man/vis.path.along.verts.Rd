% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{vis.path.along.verts}
\alias{vis.path.along.verts}
\title{Draw a 3D line from vertex to vertex}
\usage{
vis.path.along.verts(
  surface_vertices,
  path_vertex_indices = seq(1L, nrow(surface_vertices)),
  do_vis = TRUE
)
}
\arguments{
\item{surface_vertices}{float matrix of size (n, 3), the surface vertex coordinates, as returned as part of \code{\link[fsbrain]{subject.surface}} or \code{\link[freesurferformats]{read.fs.surface}}, in the member "vertices".}

\item{path_vertex_indices}{vector of vertex indices, the path. You will need to have it computed already. (This function does **not** compute geodesic paths. You can use it to visualize such a path though.) If omitted, the vertex coordinates will be traversed in their given order to create the path.}

\item{do_vis}{logical, whether to actually draw the path.}
}
\value{
n x 3 matrix, the coordinates of the path, with appropriate ones duplicated for rgl pair-wise segments3d rendering.
}
\description{
To get a nice path along the surface, pass the vertex indices along a geodesic path. Note: You can first open an interactive brain view (`view='si'`) with a vis* function like \code{\link[fsbrain]{vis.subject.morph.native}}, then run this function to draw into the active plot.
}
\seealso{
\code{vis.paths} if you need to draw many paths.

Other surface mesh functions: 
\code{\link{face.edges}()},
\code{\link{label.border}()},
\code{\link{mesh.vertex.included.faces}()},
\code{\link{mesh.vertex.neighbors}()},
\code{\link{subject.surface}()}
}
\concept{surface mesh functions}
