.class public Ldrb;
.super Ldqf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leyu",
            "<",
            "Ldtt;",
            "[",
            "Lcyx;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkaj;)V
    .locals 13

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2991
    iget-object v0, p1, Lkaj;->responseHeader:Lkdp;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Ldqf;-><init>(Lkdp;J)V

    .line 2993
    iget-object v10, p1, Lkaj;->b:[Lkak;

    .line 3958
    if-nez v10, :cond_2

    .line 2993
    :goto_0
    iput-object v6, p0, Ldrb;->g:Ljava/util/List;

    .line 5232
    sget-boolean v0, Ldqf;->a:Z

    .line 2994
    if-eqz v0, :cond_8

    .line 2995
    iget-object v0, p0, Ldrb;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2996
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GetEntityByIdResponse: Number of specs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2998
    iget-object v0, p0, Ldrb;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyu;

    .line 2999
    if-eqz v0, :cond_0

    iget-object v1, v0, Leyu;->b:Ljava/io/Serializable;

    if-eqz v1, :cond_0

    .line 3003
    iget-object v1, v0, Leyu;->b:Ljava/io/Serializable;

    if-nez v1, :cond_7

    move v1, v7

    .line 3004
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x37

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "- GetEntityByIdResponse: Number of entities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3005
    iget-object v0, v0, Leyu;->b:Ljava/io/Serializable;

    check-cast v0, [Lcyx;

    array-length v3, v0

    move v1, v7

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 3006
    if-eqz v4, :cond_1

    .line 3009
    iget-object v5, v4, Lcyx;->e:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcyx;->f:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v4, Lcyx;->h:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v4, Lcyx;->b:Lczb;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v4, v4, Lcyx;->d:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x46

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "-- entity: displayName "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ",firstName "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",avatarUrl "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",participantId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",circleId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3005
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 3962
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3964
    array-length v11, v10

    move v9, v7

    :goto_3
    if-ge v9, v11, :cond_6

    aget-object v12, v10, v9

    .line 3965
    iget-object v5, v12, Lkak;->a:Ljzi;

    .line 4169
    new-instance v0, Ldtt;

    iget-object v1, v5, Ljzi;->a:Ljava/lang/String;

    iget-object v2, v5, Ljzi;->e:Ljava/lang/String;

    iget-object v3, v5, Ljzi;->c:Ljava/lang/String;

    iget-object v4, v5, Ljzi;->d:Ljava/lang/String;

    iget-object v5, v5, Ljzi;->f:Ljava/lang/Boolean;

    .line 5015
    invoke-static {v5, v7}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    .line 4171
    invoke-direct/range {v0 .. v5}, Ldtt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3966
    iget-object v1, v12, Lkak;->b:[Ljzh;

    .line 3967
    invoke-static {v1, v0}, Laal;->a([Ljzh;Ldtt;)[Lcyx;

    move-result-object v3

    .line 3968
    if-eqz v3, :cond_5

    .line 3970
    iget-object v1, v0, Ldtt;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3971
    iget-object v1, v0, Ldtt;->c:Ljava/lang/String;

    .line 3975
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v7

    .line 3976
    :goto_5
    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 3977
    aget-object v4, v3, v2

    if-eqz v4, :cond_3

    .line 3978
    aget-object v4, v3, v2

    invoke-virtual {v4, v1}, Lcyx;->c(Ljava/lang/String;)V

    .line 3976
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3972
    :cond_4
    iget-object v1, v0, Ldtt;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 3973
    iget-object v1, v0, Ldtt;->d:Ljava/lang/String;

    goto :goto_4

    .line 3983
    :cond_5
    new-instance v1, Leyu;

    invoke-direct {v1, v0, v3}, Leyu;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3964
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_3

    :cond_6
    move-object v6, v8

    .line 3987
    goto/16 :goto_0

    .line 3003
    :cond_7
    iget-object v1, v0, Leyu;->b:Ljava/io/Serializable;

    check-cast v1, [Lcyx;

    array-length v1, v1

    goto/16 :goto_1

    .line 3018
    :cond_8
    return-void

    :cond_9
    move-object v1, v6

    goto :goto_4
.end method

.method public static parseFrom([B)Ldqf;
    .locals 2

    .prologue
    .line 3042
    new-instance v0, Lkaj;

    invoke-direct {v0}, Lkaj;-><init>()V

    .line 6131
    array-length v1, p0

    invoke-static {v0, p0, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 3043
    check-cast v0, Lkaj;

    .line 3044
    iget-object v1, v0, Lkaj;->responseHeader:Lkdp;

    invoke-static {v1}, Ldrb;->a(Lkdp;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3045
    new-instance v1, Ldqs;

    iget-object v0, v0, Lkaj;->responseHeader:Lkdp;

    invoke-direct {v1, v0}, Ldqs;-><init>(Lkdp;)V

    move-object v0, v1

    .line 3047
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ldrb;

    invoke-direct {v1, v0}, Ldrb;-><init>(Lkaj;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lbfz;Ldyy;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3023
    invoke-super {p0, p1, p2}, Ldqf;->a(Lbfz;Ldyy;)V

    .line 3025
    const-string v0, "Babel"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3026
    iget-object v0, p0, Ldrb;->b:Leff;

    if-eqz v0, :cond_2

    .line 3027
    const-string v0, "Babel"

    invoke-virtual {p0}, Ldrb;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GEBI Response for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3035
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ldrb;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldrb;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3036
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v0

    invoke-static {v0, p0}, Lehd;->a(Lbfd;Ldrb;)V

    .line 3038
    :cond_1
    return-void

    .line 3029
    :cond_2
    const-string v0, "Babel"

    const-string v1, "GEBI Response with null request!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Leyu",
            "<",
            "Ldtt;",
            "[",
            "Lcyx;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 3052
    iget-object v0, p0, Ldrb;->g:Ljava/util/List;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3056
    iget-object v0, p0, Ldrb;->b:Leff;

    check-cast v0, Ldpa;

    iget-object v0, v0, Ldpa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 3060
    iget-object v0, p0, Ldrb;->b:Leff;

    check-cast v0, Ldpa;

    iget-boolean v0, v0, Ldpa;->d:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 3064
    iget-object v0, p0, Ldrb;->b:Leff;

    check-cast v0, Ldpa;

    iget-boolean v0, v0, Ldpa;->c:Z

    return v0
.end method
