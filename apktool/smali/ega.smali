.class public final Lega;
.super Lefo;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldtl;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldmo;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:I

.field private final l:[I

.field private final m:Lczb;

.field private final n:Ldtl;

.field private final o:Z

.field private final p:I

.field private final q:I

.field private final r:J

.field private final s:[B

.field private final t:I

.field private final u:Ljava/lang/Boolean;

.field private final v:Z

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldmr;",
            ">;"
        }
    .end annotation
.end field

.field private x:J

.field private y:Ldmr;


# direct methods
.method public constructor <init>(Ljxr;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 62
    iget-object v0, p1, Ljxr;->a:Ljxw;

    iget-object v0, v0, Ljxw;->a:Ljava/lang/String;

    const-wide/16 v4, -0x1

    invoke-direct {p0, v0, v1, v4, v5}, Lefo;-><init>(Ljava/lang/String;Lczb;J)V

    .line 65
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    if-eqz v0, :cond_0

    .line 70
    invoke-static {p1}, Ljxr;->a(Llyi;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 71
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lega;->s:[B

    .line 75
    :goto_1
    iget-object v0, p1, Ljxr;->c:Ljava/lang/Integer;

    .line 1043
    invoke-static {v0, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 75
    iput v0, p0, Lega;->d:I

    .line 76
    iget-object v0, p1, Ljxr;->d:Ljava/lang/String;

    iput-object v0, p0, Lega;->e:Ljava/lang/String;

    .line 77
    iget-object v2, p1, Ljxr;->g:[Lkgb;

    .line 2027
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2028
    array-length v5, v2

    move v0, v3

    :goto_2
    if-ge v0, v5, :cond_1

    aget-object v6, v2, v0

    .line 2029
    new-instance v7, Ldtl;

    invoke-direct {v7, v6}, Ldtl;-><init>(Lkgb;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2028
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 73
    :cond_0
    iput-object v1, p0, Lega;->s:[B

    goto :goto_1

    .line 77
    :cond_1
    iput-object v4, p0, Lega;->g:Ljava/util/List;

    .line 78
    iget-object v0, p1, Ljxr;->l:[Ljxy;

    .line 79
    invoke-static {v0}, Ldmo;->a([Ljxy;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lega;->h:Ljava/util/List;

    .line 81
    iget-object v0, p1, Ljxr;->k:[Lkcr;

    iget-object v2, p1, Ljxr;->l:[Ljxy;

    .line 82
    invoke-static {v0, v2}, Laal;->a([Lkcr;[Ljxy;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lega;->f:Ljava/util/List;

    .line 84
    iget-object v0, p1, Ljxr;->h:Ljava/lang/Boolean;

    .line 3015
    invoke-static {v0, v3}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 84
    iput-boolean v0, p0, Lega;->o:Z

    .line 85
    iget-object v0, p1, Ljxr;->i:Ljava/lang/Integer;

    .line 3043
    invoke-static {v0, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 85
    iput v0, p0, Lega;->p:I

    .line 86
    iget-object v0, p1, Ljxr;->j:Ljava/lang/Integer;

    .line 87
    invoke-static {v0, v10}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    iput v0, p0, Lega;->q:I

    .line 90
    iget-object v0, p1, Ljxr;->f:Ljxs;

    if-eqz v0, :cond_b

    .line 91
    iget-object v4, p1, Ljxr;->f:Ljxs;

    .line 93
    iget-object v0, v4, Ljxs;->b:Ljava/lang/Long;

    .line 3051
    invoke-static {v0, v8, v9}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 94
    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, v4, Ljxs;->b:Ljava/lang/Long;

    .line 4051
    invoke-static {v0, v8, v9}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 95
    invoke-static {v6, v7}, Lbfz;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_3
    iput-object v0, p0, Lega;->i:Ljava/lang/String;

    .line 98
    iget-object v0, v4, Ljxs;->c:Ljava/lang/Integer;

    .line 5043
    invoke-static {v0, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 98
    iput v0, p0, Lega;->j:I

    .line 99
    iget-object v0, v4, Ljxs;->a:Ljava/lang/Integer;

    .line 6043
    invoke-static {v0, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 99
    iput v0, p0, Lega;->k:I

    .line 100
    iget-object v0, v4, Ljxs;->d:[I

    array-length v0, v0

    if-lez v0, :cond_3

    iget-object v0, v4, Ljxs;->d:[I

    :goto_4
    iput-object v0, p0, Lega;->l:[I

    .line 101
    iget-object v0, v4, Ljxs;->e:Lkcr;

    invoke-static {v0, v1}, Laal;->a(Lkcr;Ljava/lang/String;)Lczb;

    move-result-object v0

    iput-object v0, p0, Lega;->m:Lczb;

    .line 102
    iget-object v0, v4, Ljxs;->g:Lkgb;

    if-eqz v0, :cond_4

    .line 103
    new-instance v0, Ldtl;

    iget-object v2, v4, Ljxs;->g:Lkgb;

    invoke-direct {v0, v2}, Ldtl;-><init>(Lkgb;)V

    :goto_5
    iput-object v0, p0, Lega;->n:Ldtl;

    .line 104
    iget-object v0, v4, Ljxs;->h:Ljava/lang/Long;

    .line 6051
    invoke-static {v0, v8, v9}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 104
    iput-wide v6, p0, Lega;->r:J

    .line 106
    iget-object v0, v4, Ljxs;->j:Ljava/lang/Long;

    .line 7051
    invoke-static {v0, v8, v9}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 106
    iput-wide v6, p0, Lega;->x:J

    .line 107
    iget-object v0, v4, Ljxs;->k:Ljava/lang/Integer;

    .line 8043
    invoke-static {v0, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 107
    iput v0, p0, Lega;->t:I

    .line 108
    iget-object v0, v4, Ljxs;->l:Ljava/lang/Boolean;

    .line 9015
    invoke-static {v0, v3}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 109
    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    iput-object v0, p0, Lega;->u:Ljava/lang/Boolean;

    .line 110
    iget-object v0, p1, Ljxr;->m:Ljava/lang/Boolean;

    .line 10015
    invoke-static {v0, v3}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 110
    iput-boolean v0, p0, Lega;->v:Z

    .line 111
    iget-object v0, v4, Ljxs;->m:[Ljxt;

    array-length v0, v0

    if-ne v0, v10, :cond_6

    .line 114
    iput-object v1, p0, Lega;->w:Ljava/util/List;

    .line 115
    new-instance v0, Ldmr;

    iget-object v1, v4, Ljxs;->m:[Ljxt;

    aget-object v1, v1, v3

    iget-object v1, v1, Ljxt;->a:Ljyp;

    invoke-direct {v0, v1}, Ldmr;-><init>(Ljyp;)V

    iput-object v0, p0, Lega;->y:Ldmr;

    .line 151
    :goto_7
    return-void

    :cond_2
    move-object v0, v1

    .line 97
    goto :goto_3

    :cond_3
    move-object v0, v1

    .line 100
    goto :goto_4

    :cond_4
    move-object v0, v1

    .line 103
    goto :goto_5

    :cond_5
    move-object v0, v1

    .line 109
    goto :goto_6

    .line 116
    :cond_6
    iget-object v0, v4, Ljxs;->m:[Ljxt;

    array-length v0, v0

    if-le v0, v10, :cond_a

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v4, Ljxs;->m:[Ljxt;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lega;->w:Ljava/util/List;

    move v2, v3

    move-object v0, v1

    .line 119
    :goto_8
    iget-object v1, v4, Ljxs;->m:[Ljxt;

    array-length v1, v1

    if-ge v2, v1, :cond_9

    .line 120
    new-instance v1, Ldmr;

    iget-object v5, v4, Ljxs;->m:[Ljxt;

    aget-object v5, v5, v2

    iget-object v5, v5, Ljxt;->a:Ljyp;

    invoke-direct {v1, v5}, Ldmr;-><init>(Ljyp;)V

    .line 122
    iget-object v5, p0, Lega;->w:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    if-eqz v0, :cond_7

    iget-object v5, v4, Ljxs;->m:[Ljxt;

    aget-object v5, v5, v2

    iget-object v5, v5, Ljxt;->b:Ljava/lang/Boolean;

    .line 11015
    invoke-static {v5, v3}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    .line 126
    if-eqz v5, :cond_8

    :cond_7
    move-object v0, v1

    .line 119
    :cond_8
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8

    .line 130
    :cond_9
    iput-object v0, p0, Lega;->y:Ldmr;

    goto :goto_7

    .line 132
    :cond_a
    iput-object v1, p0, Lega;->w:Ljava/util/List;

    .line 133
    iput-object v1, p0, Lega;->y:Ldmr;

    goto :goto_7

    .line 136
    :cond_b
    iput-object v1, p0, Lega;->i:Ljava/lang/String;

    .line 138
    const/16 v0, 0x1e

    iput v0, p0, Lega;->j:I

    .line 139
    iput v11, p0, Lega;->k:I

    .line 140
    iput-object v1, p0, Lega;->l:[I

    .line 141
    iput-object v1, p0, Lega;->m:Lczb;

    .line 142
    iput-object v1, p0, Lega;->n:Ldtl;

    .line 143
    iput-wide v8, p0, Lega;->r:J

    .line 144
    iput-wide v8, p0, Lega;->x:J

    .line 145
    iput v11, p0, Lega;->t:I

    .line 146
    iput-object v1, p0, Lega;->u:Ljava/lang/Boolean;

    .line 147
    iput-boolean v3, p0, Lega;->v:Z

    .line 148
    iput-object v1, p0, Lega;->w:Ljava/util/List;

    .line 149
    iput-object v1, p0, Lega;->y:Ldmr;

    goto :goto_7
.end method

.method public constructor <init>(Ljxr;B)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lega;-><init>(Ljxr;)V

    .line 161
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 314
    iput-wide p1, p0, Lega;->x:J

    .line 315
    return-void
.end method

.method protected a(Lbfz;Ldyy;)V
    .locals 8

    .prologue
    .line 338
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v0

    invoke-static {v0, p0}, Lbft;->a(Lbfd;Lega;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    invoke-virtual {p1}, Lbfz;->g()Lbfd;

    move-result-object v0

    const/16 v1, 0x72f

    .line 339
    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-virtual {p1}, Lbfz;->a()V

    .line 347
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    .line 348
    :try_start_0
    invoke-static/range {v0 .. v7}, Lbft;->a(Lbfz;Lega;JLjava/lang/String;Ldyy;Lbfy;Z)Z

    move-result v0

    .line 350
    invoke-virtual {p1}, Lbfz;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    invoke-virtual {p1}, Lbfz;->c()V

    .line 354
    if-eqz v0, :cond_0

    .line 355
    invoke-static {p1}, Lbft;->d(Lbfz;)V

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbfz;->c()V

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lega;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldmo;

    .line 299
    iget-object v0, v0, Ldmo;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljyp;

    invoke-direct {v0}, Ljyp;-><init>()V

    .line 301
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ljyp;->a:Ljava/lang/Integer;

    .line 302
    new-instance v1, Llcf;

    invoke-direct {v1}, Llcf;-><init>()V

    iput-object v1, v0, Ljyp;->b:Llcf;

    .line 303
    iget-object v1, v0, Ljyp;->b:Llcf;

    iput-object p1, v1, Llcf;->a:Ljava/lang/String;

    .line 304
    new-instance v1, Ldmr;

    invoke-direct {v1, v0}, Ldmr;-><init>(Ljyp;)V

    iput-object v1, p0, Lega;->y:Ldmr;

    .line 308
    :cond_1
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lega;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lega;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lega;->u:Ljava/lang/Boolean;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldtl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lega;->g:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldmo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lega;->h:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldmr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lega;->w:Ljava/util/List;

    return-object v0
.end method

.method public j()Ldmr;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lega;->y:Ldmr;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lega;->f:Ljava/util/List;

    return-object v0
.end method

.method public l()Ldtl;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lega;->n:Ldtl;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lega;->o:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lega;->i:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lega;->t:I

    return v0
.end method

.method public p()Lczb;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lega;->m:Lczb;

    return-object v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lega;->j:I

    return v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lega;->k:I

    return v0
.end method

.method public s()[I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lega;->l:[I

    return-object v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lega;->p:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 327
    const-string v1, "C["

    iget-object v0, p0, Lega;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lega;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; clientGenerated="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lega;->j:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; notificationLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    return-object v0

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lega;->q:I

    return v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lega;->r:J

    return-wide v0
.end method

.method public w()J
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Lega;->x:J

    return-wide v0
.end method

.method public x()[B
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lega;->s:[B

    return-object v0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lega;->v:Z

    return v0
.end method

.method public z()Z
    .locals 4

    .prologue
    .line 321
    iget-wide v0, p0, Lega;->x:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
