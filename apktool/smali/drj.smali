.class public Ldrj;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldrk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Liym;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 4953
    iget-object v0, p1, Liym;->apiHeader:Liye;

    invoke-direct {p0, v0}, Ldqf;-><init>(Liye;)V

    .line 4925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldrj;->i:Ljava/util/ArrayList;

    .line 4955
    iget-object v0, p1, Liym;->a:Ljdb;

    iget-object v0, v0, Ljdb;->a:Ljcf;

    .line 4956
    if-eqz v0, :cond_a

    .line 4957
    iget-object v3, v0, Ljcf;->a:Ljava/lang/String;

    iput-object v3, p0, Ldrj;->g:Ljava/lang/String;

    .line 4959
    iget-object v3, v0, Ljcf;->e:Ljcp;

    .line 4960
    if-eqz v3, :cond_2

    .line 4961
    iget-object v4, v3, Ljcp;->g:Ljbb;

    .line 4962
    if-eqz v4, :cond_0

    .line 4963
    iget-object v4, v4, Ljbb;->b:[Ljba;

    array-length v5, v4

    if-lez v5, :cond_0

    aget-object v4, v4, v2

    .line 4964
    new-instance v5, Ldrk;

    invoke-direct {v5}, Ldrk;-><init>()V

    .line 4965
    iget-object v6, v4, Ljba;->a:Ljava/lang/String;

    iput-object v6, v5, Ldrk;->a:Ljava/lang/String;

    .line 4966
    iget-object v6, v4, Ljba;->b:Ljava/lang/String;

    iput-object v6, v5, Ldrk;->b:Ljava/lang/String;

    .line 4967
    iget-object v4, v4, Ljba;->c:Ljau;

    .line 4968
    if-nez v4, :cond_5

    .line 4969
    invoke-static {v7}, Ldrk;->a(Ljan;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, v5, Ldrk;->d:Ljava/util/Calendar;

    .line 4970
    invoke-static {v7}, Ldrk;->a(Ljan;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, v5, Ldrk;->e:Ljava/util/Calendar;

    .line 4977
    :goto_0
    iput v1, v5, Ldrk;->c:I

    .line 4978
    iget-object v4, p0, Ldrj;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4983
    :cond_0
    iget-object v4, v3, Ljcp;->h:Ljaz;

    .line 4984
    if-eqz v4, :cond_1

    .line 4985
    iget-object v4, v4, Ljaz;->b:[Ljay;

    array-length v5, v4

    if-lez v5, :cond_1

    aget-object v4, v4, v2

    .line 4986
    new-instance v5, Ldrk;

    invoke-direct {v5}, Ldrk;-><init>()V

    .line 4987
    iget-object v6, v4, Ljay;->a:Ljava/lang/String;

    iput-object v6, v5, Ldrk;->a:Ljava/lang/String;

    .line 4988
    iget-object v4, v4, Ljay;->c:Ljau;

    .line 4989
    if-nez v4, :cond_6

    .line 4990
    invoke-static {v7}, Ldrk;->a(Ljan;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, v5, Ldrk;->d:Ljava/util/Calendar;

    .line 4991
    invoke-static {v7}, Ldrk;->a(Ljan;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, v5, Ldrk;->e:Ljava/util/Calendar;

    .line 4998
    :goto_1
    const/4 v4, 0x2

    iput v4, v5, Ldrk;->c:I

    .line 4999
    iget-object v4, p0, Ldrj;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5004
    :cond_1
    iget-object v3, v3, Ljcp;->i:Ljbm;

    .line 5005
    if-eqz v3, :cond_2

    .line 5006
    iget-object v3, v3, Ljbm;->b:Ljava/lang/String;

    .line 5007
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5008
    new-instance v4, Ldrk;

    invoke-direct {v4}, Ldrk;-><init>()V

    .line 5009
    iput-object v3, v4, Ldrk;->a:Ljava/lang/String;

    .line 5010
    const/4 v3, 0x3

    iput v3, v4, Ldrk;->c:I

    .line 5011
    iget-object v3, p0, Ldrj;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5016
    :cond_2
    iget-object v0, v0, Ljcf;->d:Ljap;

    .line 5017
    if-eqz v0, :cond_a

    .line 5018
    iget-object v0, v0, Ljap;->j:Ljby;

    .line 5019
    if-eqz v0, :cond_a

    .line 5020
    iget-object v3, v0, Ljby;->e:Ljbz;

    .line 5022
    if-eqz v3, :cond_7

    .line 5023
    iget-object v0, v3, Ljbz;->a:Ljava/lang/String;

    .line 5026
    :goto_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5027
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 5028
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 5029
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5030
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 5031
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_8

    .line 5032
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 5033
    const/4 v0, 0x4

    if-ne v2, v0, :cond_3

    if-nez v1, :cond_4

    .line 5036
    :cond_3
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5037
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 5032
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4972
    :cond_5
    iget-object v6, v4, Ljau;->a:Ljan;

    .line 4973
    invoke-static {v6}, Ldrk;->a(Ljan;)Ljava/util/Calendar;

    move-result-object v6

    iput-object v6, v5, Ldrk;->d:Ljava/util/Calendar;

    .line 4974
    iget-object v4, v4, Ljau;->b:Ljan;

    .line 4975
    invoke-static {v4}, Ldrk;->a(Ljan;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, v5, Ldrk;->e:Ljava/util/Calendar;

    goto/16 :goto_0

    .line 4993
    :cond_6
    iget-object v6, v4, Ljau;->a:Ljan;

    .line 4994
    invoke-static {v6}, Ldrk;->a(Ljan;)Ljava/util/Calendar;

    move-result-object v6

    iput-object v6, v5, Ldrk;->d:Ljava/util/Calendar;

    .line 4995
    iget-object v4, v4, Ljau;->b:Ljan;

    .line 4996
    invoke-static {v4}, Ldrk;->a(Ljan;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, v5, Ldrk;->e:Ljava/util/Calendar;

    goto/16 :goto_1

    .line 5023
    :cond_7
    iget-object v0, v0, Ljby;->f:Ljava/lang/String;

    goto :goto_2

    :cond_8
    move v1, v2

    .line 5031
    goto :goto_3

    .line 5039
    :cond_9
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldrj;->h:Ljava/lang/String;

    .line 5043
    :cond_a
    return-void
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 5059
    new-instance v0, Liym;

    invoke-direct {v0}, Liym;-><init>()V

    .line 5131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 5060
    check-cast v0, Liym;

    .line 5061
    iget-object v1, v0, Liym;->apiHeader:Liye;

    invoke-static {v1}, Ldrj;->a(Liye;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5062
    new-instance v1, Ldqs;

    iget-object v0, v0, Liym;->apiHeader:Liye;

    invoke-direct {v1, v0}, Ldqs;-><init>(Liye;)V

    move-object v0, v1

    .line 5064
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldrj;

    invoke-direct {v1, v0}, Ldrj;-><init>(Liym;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public k()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 5046
    iget-object v0, p0, Ldrj;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldrj;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5050
    iget-object v0, p0, Ldrj;->g:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ldrk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5054
    iget-object v0, p0, Ldrj;->i:Ljava/util/ArrayList;

    return-object v0
.end method
