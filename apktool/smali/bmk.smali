.class final Lbmk;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbmj;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbmj;)V
    .locals 1

    .prologue
    .line 220
    iput-object p1, p0, Lbmk;->a:Lbmj;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmk;->b:Ljava/util/List;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmk;->c:Ljava/util/List;

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 314
    new-instance v0, Lbfz;

    iget-object v1, p0, Lbmk;->a:Lbmj;

    iget-object v1, v1, Lbmj;->a:Lblw;

    .line 3052
    iget-object v1, v1, Lblw;->a:Landroid/content/Context;

    .line 314
    iget-object v2, p0, Lbmk;->a:Lbmj;

    iget-object v2, v2, Lbmj;->a:Lblw;

    .line 4052
    iget-object v2, v2, Lblw;->b:Lbfd;

    .line 314
    invoke-virtual {v2}, Lbfd;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 316
    iget-object v1, p0, Lbmk;->a:Lbmj;

    iget-object v1, v1, Lbmj;->a:Lblw;

    .line 5052
    iget-object v1, v1, Lblw;->d:Lcyx;

    .line 318
    invoke-static {}, Leie;->a()Leie;

    move-result-object v2

    .line 322
    :try_start_0
    invoke-virtual {v2}, Leie;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, v1, Lcyx;->b:Lczb;

    iget-object v3, v3, Lczb;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 324
    iget-object v1, v1, Lcyx;->b:Lczb;

    iget-object v1, v1, Lczb;->a:Ljava/lang/String;

    .line 325
    invoke-virtual {v2, v1}, Leie;->a(Ljava/lang/String;)Lbzq;

    move-result-object v3

    invoke-direct {p0, v1, v3, v0}, Lbmk;->a(Ljava/lang/String;Lbzq;Lbfz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_0
    :goto_0
    invoke-virtual {v2}, Leie;->c()V

    .line 335
    const/4 v0, 0x0

    return-object v0

    .line 326
    :cond_1
    :try_start_1
    iget-object v3, v1, Lcyx;->c:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 327
    iget-object v1, v1, Lcyx;->c:Ljava/lang/String;

    .line 328
    invoke-virtual {v0, v1, v2}, Lbfz;->b(Ljava/lang/String;Leie;)Lbzq;

    move-result-object v3

    invoke-direct {p0, v1, v3, v0}, Lbmk;->a(Ljava/lang/String;Lbzq;Lbfz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Leie;->c()V

    throw v0
.end method

.method private a(Ljava/lang/String;Lbzq;Lbfz;)V
    .locals 11

    .prologue
    .line 234
    if-nez p2, :cond_0

    .line 1277
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    .line 1278
    const-string v1, "text"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/ no contacts match"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    iget-object v1, p0, Lbmk;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    iget-object v1, p0, Lbmk;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :goto_0
    return-void

    .line 239
    :cond_0
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    .line 240
    const-string v1, "text"

    invoke-virtual {p2}, Lbzq;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lbmk;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-virtual {p2}, Lbzq;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzv;

    .line 245
    iget-object v4, v0, Lbzv;->a:Ljava/lang/String;

    .line 246
    const/4 v1, 0x0

    .line 247
    invoke-virtual {p3, v1, v4}, Lbfz;->a(Lczb;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 249
    invoke-static {v4}, Laal;->l(Ljava/lang/String;)Lczb;

    move-result-object v1

    .line 250
    const/4 v6, 0x0

    const/4 v7, 0x3

    .line 251
    invoke-virtual {p3, v1, v6, v7}, Lbfz;->a(Lczb;ZI)Lbgq;

    move-result-object v6

    .line 254
    iget-object v1, p0, Lbmk;->a:Lbmj;

    iget-object v1, v1, Lbmj;->a:Lblw;

    .line 2052
    iget-object v1, v1, Lblw;->e:Ljava/lang/String;

    .line 255
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    const-string v1, "(INCL)"

    .line 259
    :goto_2
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "    %s\n    computed merge key: %s %s\n    conversation exists? %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v0, v0, Lbzv;->b:Ljava/lang/String;

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v5, v9, v0

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const/4 v1, 0x3

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    .line 264
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v1

    .line 259
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lbmk;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_1
    const-string v1, "(EXCL)"

    goto :goto_2

    .line 259
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 268
    :cond_3
    invoke-virtual {p2}, Lbzq;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzt;

    .line 269
    const-string v3, "email"

    iget-object v0, v0, Lbzt;->a:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lbmk;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 272
    :cond_4
    const-string v0, "qualifiedId"

    invoke-virtual {p2}, Lbzq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lbmk;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lbmk;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lhq",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    .line 227
    const-string v1, "main"

    invoke-virtual {v0, v1, p1}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v1, "sub"

    invoke-virtual {v0, v1, p2}, Lhq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Lbmk;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 5287
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lbmk;->a:Lbmj;

    iget-object v0, v0, Lbmj;->a:Lblw;

    .line 6052
    iget-object v0, v0, Lblw;->a:Landroid/content/Context;

    .line 5287
    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5289
    new-instance v0, Landroid/widget/SimpleExpandableListAdapter;

    iget-object v1, p0, Lbmk;->a:Lbmj;

    iget-object v1, v1, Lbmj;->a:Lblw;

    .line 7052
    iget-object v1, v1, Lblw;->a:Landroid/content/Context;

    .line 5290
    iget-object v2, p0, Lbmk;->b:Ljava/util/List;

    sget v3, Laal;->fv:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "text"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x1020014

    aput v7, v5, v6

    iget-object v6, p0, Lbmk;->c:Ljava/util/List;

    sget v7, Laal;->fw:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v11, "main"

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const-string v11, "sub"

    aput-object v11, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    invoke-direct/range {v0 .. v9}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V

    .line 5303
    new-instance v1, Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lbmk;->a:Lbmj;

    iget-object v2, v2, Lbmj;->a:Lblw;

    .line 8052
    iget-object v2, v2, Lblw;->a:Landroid/content/Context;

    .line 5303
    invoke-direct {v1, v2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 5304
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5306
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 5308
    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5309
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 220
    return-void

    .line 5290
    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method
