<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><?= $title ?></h1>
    </div>

    <div class="row">
        <div class="col-lg-6">

            <?= $this->session->flashdata('message') ?>
            <h5>Role : <?= $role['role']; ?></h5>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Menu</th>
                        <th scope="col">Access</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $x = 1;
                    foreach ($menu as $m) { ?>
                        <tr>
                            <th scope="row"><?= $x++; ?></th>
                            <td><?= $m['nama_menu'] ?></td>
                            <td>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" <?= check_access($role['id_role'], $m['id_menu']); ?> data-role="<?= $role['id_role'] ?>" data-menu="<?= $m['id_menu'] ?>">
                                </div>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>




</div>