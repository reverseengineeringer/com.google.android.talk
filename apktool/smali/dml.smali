.class public final Ldml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Float;

.field private f:Z

.field private g:Z

.field private h:J

.field private i:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldml;->f:Z

    .line 80
    iput-object p1, p0, Ldml;->a:Ljava/lang/String;

    .line 81
    const v0, 0x3f8a3d71    # 1.08f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Ldml;->e:Ljava/lang/Float;

    .line 82
    const/4 v0, 0x3

    iput v0, p0, Ldml;->b:I

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldml;->f:Z

    .line 68
    iput-object p1, p0, Ldml;->a:Ljava/lang/String;

    .line 69
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ldml;->d:Ljava/lang/Long;

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Ldml;->b:I

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldml;->f:Z

    .line 56
    iput-object p1, p0, Ldml;->a:Ljava/lang/String;

    .line 57
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldml;->c:Ljava/lang/Boolean;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Ldml;->b:I

    .line 59
    return-void
.end method

.method public constructor <init>(Ljzv;)V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v1, p0, Ldml;->f:Z

    .line 92
    iget-object v2, p1, Ljzv;->a:Ljava/lang/String;

    iput-object v2, p0, Ldml;->a:Ljava/lang/String;

    .line 93
    iget-object v2, p1, Ljzv;->b:Ljava/lang/Integer;

    .line 1043
    invoke-static {v2, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 94
    if-ne v2, v0, :cond_0

    .line 95
    iput v0, p0, Ldml;->b:I

    .line 96
    iget-object v2, p1, Ljzv;->c:Ljzw;

    iget-object v2, v2, Ljzw;->d:Ljava/lang/Boolean;

    .line 2015
    invoke-static {v2, v1}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 96
    iput-boolean v2, p0, Ldml;->g:Z

    .line 107
    :goto_0
    iget-object v2, p1, Ljzv;->d:Ljava/lang/Integer;

    .line 3043
    invoke-static {v2, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 107
    if-ne v2, v6, :cond_3

    :goto_1
    iput-boolean v0, p0, Ldml;->f:Z

    .line 108
    return-void

    .line 97
    :cond_0
    if-ne v2, v6, :cond_1

    .line 98
    iput v6, p0, Ldml;->b:I

    .line 99
    iget-object v2, p1, Ljzv;->c:Ljzw;

    iget-object v2, v2, Ljzw;->a:Ljava/lang/Long;

    .line 2051
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 99
    iput-wide v2, p0, Ldml;->h:J

    goto :goto_0

    .line 100
    :cond_1
    if-ne v2, v3, :cond_2

    .line 101
    iput v3, p0, Ldml;->b:I

    .line 102
    iget-object v2, p1, Ljzv;->c:Ljzw;

    iget-object v2, v2, Ljzw;->b:Ljava/lang/Double;

    invoke-static {v2}, Laal;->a(Ljava/lang/Double;)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Ldml;->i:F

    goto :goto_0

    .line 104
    :cond_2
    const-string v3, "Babel"

    const-string v4, "Invalid server experiment type %s for %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {p0}, Ldml;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const/4 v2, -0x1

    iput v2, p0, Ldml;->b:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 107
    goto :goto_1
.end method

.method private static e(I)Lhqc;
    .locals 2

    .prologue
    .line 14036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 287
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    invoke-interface {v0, p0}, Lhpz;->b(I)Lhqc;

    move-result-object v0

    return-object v0
.end method

.method private static e()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 11036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 257
    const-class v1, Ldvo;

    invoke-static {v0, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvo;

    .line 258
    invoke-interface {v0}, Ldvo;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-interface {v0}, Ldvo;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 12036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 267
    const-class v1, Ldvo;

    invoke-static {v0, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvo;

    .line 268
    invoke-interface {v0}, Ldvo;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    invoke-interface {v0}, Ldvo;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g()Ljava/lang/Float;
    .locals 3

    .prologue
    .line 13036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 277
    const-class v1, Ldvo;

    invoke-static {v0, v1}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldvo;

    .line 278
    invoke-interface {v0}, Ldvo;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-interface {v0}, Ldvo;->d()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 111
    iget v1, p0, Ldml;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid experiment type. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ldml;->b:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Ldml;->b:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Ldml;->b:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 114
    iget v0, p0, Ldml;->b:I

    return v0

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 148
    iget-object v0, p0, Ldml;->c:Ljava/lang/Boolean;

    .line 3198
    const-string v2, "Expected non-null"

    invoke-static {v2, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 150
    const-class v2, Lhpz;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 151
    invoke-interface {v0, p1}, Lhpz;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const-string v0, "Babel"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid account getting server boolean experiment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 157
    :goto_0
    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Ldml;->c:Ljava/lang/Boolean;

    .line 5015
    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 156
    invoke-static {p1}, Ldml;->e(I)Lhqc;

    move-result-object v2

    const-string v3, "babel_exp"

    invoke-virtual {v2, v3}, Lhqc;->g(Ljava/lang/String;)Lhqc;

    move-result-object v2

    .line 157
    iget-object v3, p0, Ldml;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lhqc;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Ldml;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lhqc;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lhqe;Ldml;)V
    .locals 4

    .prologue
    .line 196
    invoke-virtual {p2}, Ldml;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ldml;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p2}, Ldml;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Ldml;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p2}, Ldml;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 199
    const-string v0, "babel_exp"

    invoke-interface {p1, v0}, Lhqe;->h(Ljava/lang/String;)Lhqe;

    move-result-object v0

    iget-object v1, p0, Ldml;->a:Ljava/lang/String;

    iget-boolean v2, p2, Ldml;->g:Z

    invoke-interface {v0, v1, v2}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p2}, Ldml;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 201
    const-string v0, "babel_exp"

    invoke-interface {p1, v0}, Lhqe;->h(Ljava/lang/String;)Lhqe;

    move-result-object v0

    iget-object v1, p0, Ldml;->a:Ljava/lang/String;

    iget-wide v2, p2, Ldml;->h:J

    invoke-interface {v0, v1, v2, v3}, Lhqe;->c(Ljava/lang/String;J)Lhqe;

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p2}, Ldml;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 203
    const-string v0, "babel_exp"

    invoke-interface {p1, v0}, Lhqe;->h(Ljava/lang/String;)Lhqe;

    move-result-object v0

    iget-object v1, p0, Ldml;->a:Ljava/lang/String;

    iget v2, p2, Ldml;->i:F

    invoke-interface {v0, v1, v2}, Lhqe;->b(Ljava/lang/String;F)Lhqe;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 128
    iput-boolean p1, p0, Ldml;->f:Z

    .line 129
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Ldml;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v0, p0, Ldml;->c:Ljava/lang/Boolean;

    .line 5198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Ldml;->c:Ljava/lang/Boolean;

    .line 6015
    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 6036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 212
    const-class v2, Lhpz;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 213
    invoke-interface {v0, p1}, Lhpz;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    const-string v0, "Babel"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid account getting boolean experiment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 220
    :goto_0
    return v0

    .line 217
    :cond_0
    invoke-static {}, Ldml;->e()Ljava/lang/Boolean;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_1

    .line 7015
    invoke-static {v0, v4}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    goto :goto_0

    .line 220
    :cond_1
    invoke-static {p1}, Ldml;->e(I)Lhqc;

    move-result-object v0

    const-string v2, "babel_exp"

    invoke-virtual {v0, v2}, Lhqc;->g(Ljava/lang/String;)Lhqc;

    move-result-object v0

    iget-object v2, p0, Ldml;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lhqc;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public c(I)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 225
    iget-object v0, p0, Ldml;->d:Ljava/lang/Long;

    .line 7198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Ldml;->d:Ljava/lang/Long;

    .line 8051
    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 9036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 228
    const-class v1, Lhpz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 229
    invoke-interface {v0, p1}, Lhpz;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    const-string v0, "Babel"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x33

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid account getting long experiment "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    .line 236
    :goto_0
    return-wide v0

    .line 233
    :cond_0
    invoke-static {}, Ldml;->f()Ljava/lang/Long;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_1

    .line 9051
    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    goto :goto_0

    .line 236
    :cond_1
    invoke-static {p1}, Ldml;->e(I)Lhqc;

    move-result-object v0

    const-string v1, "babel_exp"

    invoke-virtual {v0, v1}, Lhqc;->g(Ljava/lang/String;)Lhqc;

    move-result-object v0

    iget-object v1, p0, Ldml;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lhqc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Ldml;->f:Z

    return v0
.end method

.method public d(I)F
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Ldml;->e:Ljava/lang/Float;

    .line 9198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Ldml;->e:Ljava/lang/Float;

    invoke-static {v0}, Laal;->a(Ljava/lang/Float;)F

    move-result v1

    .line 10036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 244
    const-class v2, Lhpz;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 245
    invoke-interface {v0, p1}, Lhpz;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const-string v0, "Babel"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x34

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid account getting float experiment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 252
    :goto_0
    return v0

    .line 249
    :cond_0
    invoke-static {}, Ldml;->g()Ljava/lang/Float;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_1

    .line 251
    invoke-static {v0}, Laal;->a(Ljava/lang/Float;)F

    move-result v0

    goto :goto_0

    .line 252
    :cond_1
    invoke-static {p1}, Ldml;->e(I)Lhqc;

    move-result-object v0

    const-string v2, "babel_exp"

    invoke-virtual {v0, v2}, Lhqc;->g(Ljava/lang/String;)Lhqc;

    move-result-object v0

    iget-object v2, p0, Ldml;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lhqc;->a(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Ldml;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 292
    const-string v0, "BabelExperiment{id=\'"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldml;->a:Ljava/lang/String;

    iget v2, p0, Ldml;->b:I

    iget-object v3, p0, Ldml;->c:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ldml;->d:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ldml;->e:Ljava/lang/Float;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x4c

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', experimentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultBoolean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
