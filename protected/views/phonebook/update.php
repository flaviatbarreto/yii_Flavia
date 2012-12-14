<?php
/* @var $this PhonebookController */
/* @var $model Phonebook */

$this->breadcrumbs=array(
	'Phonebooks'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

?>

<h1>Atualizar Contato <?php echo $model->name; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>