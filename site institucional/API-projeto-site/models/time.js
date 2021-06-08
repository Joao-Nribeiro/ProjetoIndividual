'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
    let timeCamp = sequelize.define('timeCamp',{
		idTimeCamp: {
			field: 'idTimeCamp',
			type: DataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},		
		nomeTime: {
			field: 'nomeTime',
			type: DataTypes.STRING,
			allowNull: false
		},
		kdTime: {
			field: 'kdTime',
			type: DataTypes.FLOAT,
			allowNull: false
		}
	}, 
	{
		tableName: 'timeCamp', 
		freezeTableName: true, 
		underscored: true,
		timestamps: false,
	});

    return timeCamp;
};
