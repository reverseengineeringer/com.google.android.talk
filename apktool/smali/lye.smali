.class final Llye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<**>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llym;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llye;->c:Ljava/util/List;

    .line 55
    return-void
.end method

.method constructor <init>(Llyc;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llyc",
            "<*TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Llye;->a:Llyc;

    .line 50
    iput-object p2, p0, Llye;->b:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method private c()[B
    .locals 3

    .prologue
    .line 184
    invoke-virtual {p0}, Llye;->a()I

    move-result v0

    new-array v0, v0, [B

    .line 1075
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Llxz;->a([BII)Llxz;

    move-result-object v1

    .line 186
    invoke-virtual {p0, v1}, Llye;->a(Llxz;)V

    .line 187
    return-object v0
.end method


# virtual methods
.method a()I
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Llye;->b:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 101
    iget-object v0, p0, Llye;->a:Llyc;

    iget-object v1, p0, Llye;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Llyc;->a(Ljava/lang/Object;)I

    move-result v1

    .line 107
    :cond_0
    return v1

    .line 103
    :cond_1
    iget-object v1, p0, Llye;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llym;

    .line 104
    invoke-virtual {v0}, Llym;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 105
    goto :goto_0
.end method

.method a(Llyc;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llyc",
            "<*TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Llye;->a:Llyc;

    if-eq v0, p1, :cond_1

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to getExtension with a differernt Extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-object p1, p0, Llye;->a:Llyc;

    .line 86
    iget-object v0, p0, Llye;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Llyc;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Llye;->b:Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Llye;->c:Ljava/util/List;

    .line 89
    :cond_1
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    return-object v0
.end method

.method a(Llxz;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Llye;->a:Llyc;

    iget-object v1, p0, Llye;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Llyc;->a(Ljava/lang/Object;Llxz;)V

    .line 118
    :cond_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Llye;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llym;

    .line 115
    invoke-virtual {v0, p1}, Llym;->a(Llxz;)V

    goto :goto_0
.end method

.method a(Llyc;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llyc",
            "<*TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 93
    iput-object p1, p0, Llye;->a:Llyc;

    .line 94
    iput-object p2, p0, Llye;->b:Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Llye;->c:Ljava/util/List;

    .line 96
    return-void
.end method

.method a(Llym;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Llye;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public final b()Llye;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 192
    new-instance v3, Llye;

    invoke-direct {v3}, Llye;-><init>()V

    .line 194
    :try_start_0
    iget-object v0, p0, Llye;->a:Llyc;

    iput-object v0, v3, Llye;->a:Llyc;

    .line 195
    iget-object v0, p0, Llye;->c:Ljava/util/List;

    if-nez v0, :cond_1

    .line 196
    const/4 v0, 0x0

    iput-object v0, v3, Llye;->c:Ljava/util/List;

    .line 204
    :goto_0
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, Llyi;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, Llyi;

    invoke-virtual {v0}, Llyi;->k()Llyi;

    move-result-object v0

    iput-object v0, v3, Llye;->b:Ljava/lang/Object;

    .line 235
    :cond_0
    :goto_1
    return-object v3

    .line 198
    :cond_1
    iget-object v0, v3, Llye;->c:Ljava/util/List;

    iget-object v2, p0, Llye;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 208
    :cond_2
    :try_start_1
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Llye;->b:Ljava/lang/Object;

    goto :goto_1

    .line 210
    :cond_3
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, [[B

    if-eqz v0, :cond_4

    .line 211
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [[B

    .line 212
    array-length v2, v0

    new-array v4, v2, [[B

    .line 213
    iput-object v4, v3, Llye;->b:Ljava/lang/Object;

    move v2, v1

    .line 214
    :goto_2
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 215
    aget-object v1, v0, v2

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    aput-object v1, v4, v2

    .line 214
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 217
    :cond_4
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_5

    .line 218
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Llye;->b:Ljava/lang/Object;

    goto :goto_1

    .line 219
    :cond_5
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_6

    .line 220
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Llye;->b:Ljava/lang/Object;

    goto :goto_1

    .line 221
    :cond_6
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_7

    .line 222
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Llye;->b:Ljava/lang/Object;

    goto :goto_1

    .line 223
    :cond_7
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_8

    .line 224
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Llye;->b:Ljava/lang/Object;

    goto/16 :goto_1

    .line 225
    :cond_8
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_9

    .line 226
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Llye;->b:Ljava/lang/Object;

    goto/16 :goto_1

    .line 227
    :cond_9
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, [Llyi;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [Llyi;

    .line 229
    array-length v2, v0

    new-array v2, v2, [Llyi;

    .line 230
    iput-object v2, v3, Llye;->b:Ljava/lang/Object;

    .line 231
    :goto_3
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 232
    aget-object v4, v0, v1

    invoke-virtual {v4}, Llyi;->k()Llyi;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Llye;->b()Llye;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 122
    if-ne p1, p0, :cond_1

    .line 123
    const/4 v0, 0x1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    instance-of v1, p1, Llye;

    if-eqz v1, :cond_0

    .line 129
    check-cast p1, Llye;

    .line 130
    iget-object v1, p0, Llye;->b:Ljava/lang/Object;

    if-eqz v1, :cond_9

    iget-object v1, p1, Llye;->b:Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 134
    iget-object v1, p0, Llye;->a:Llyc;

    iget-object v2, p1, Llye;->a:Llyc;

    if-ne v1, v2, :cond_0

    .line 137
    iget-object v0, p0, Llye;->a:Llyc;

    iget-object v0, v0, Llyc;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    iget-object v1, p1, Llye;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p1, Llye;->b:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    .line 143
    :cond_3
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [I

    iget-object v1, p1, Llye;->b:Ljava/lang/Object;

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0

    .line 145
    :cond_4
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p1, Llye;->b:Ljava/lang/Object;

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_0

    .line 147
    :cond_5
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_6

    .line 148
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [F

    iget-object v1, p1, Llye;->b:Ljava/lang/Object;

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0

    .line 149
    :cond_6
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_7

    .line 150
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [D

    iget-object v1, p1, Llye;->b:Ljava/lang/Object;

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto/16 :goto_0

    .line 151
    :cond_7
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_8

    .line 152
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p1, Llye;->b:Ljava/lang/Object;

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto/16 :goto_0

    .line 154
    :cond_8
    iget-object v0, p0, Llye;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p1, Llye;->b:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 157
    :cond_9
    iget-object v0, p0, Llye;->c:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p1, Llye;->c:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 159
    iget-object v0, p0, Llye;->c:Ljava/util/List;

    iget-object v1, p1, Llye;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    .line 163
    :cond_a
    :try_start_0
    invoke-direct {p0}, Llye;->c()[B

    move-result-object v0

    invoke-direct {p1}, Llye;->c()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 175
    :try_start_0
    invoke-direct {p0}, Llye;->c()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 180
    return v0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
