@app.route('/features/varimp/<modelid>')
def get_features_var_inp(modelid):

    dbs.begin()
    try:
        tablequery = dbs['features']
        ddd = tablequery.find(model_id=modelid, order_by='-relative_importance')
        dbs.commit()
    except:
        dbs.rollback()

    rlist = []
    for row in ddd:
        if float(row['relative_importance']) != 0:
            rlist.append(row['variable_importances'] + str(row['relative_importance']))

    res11 = app.response_class(
        response=json.dumps(rlist),
        status=200,
        mimetype='application/json'
    )
    return res11
