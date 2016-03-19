.class public final Lkxm;
.super Lkrw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkrw",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field public static final b:Lkxm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkxm",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient c:[Lkss;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkss",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transient d:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transient e:I

.field final transient f:I

.field private final transient g:[Lkss;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkss",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient h:Lkrw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkrw",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 40
    new-instance v0, Lkxm;

    sget-object v3, Lksm;->a:[Ljava/util/Map$Entry;

    move-object v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lkxm;-><init>([Lkss;[Lkss;[Ljava/util/Map$Entry;II)V

    sput-object v0, Lkxm;->b:Lkxm;

    return-void
.end method

.method private constructor <init>([Lkss;[Lkss;[Ljava/util/Map$Entry;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkss",
            "<TK;TV;>;[",
            "Lkss",
            "<TK;TV;>;[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;II)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Lkrw;-><init>()V

    .line 116
    iput-object p1, p0, Lkxm;->g:[Lkss;

    .line 117
    iput-object p2, p0, Lkxm;->c:[Lkss;

    .line 118
    iput-object p3, p0, Lkxm;->d:[Ljava/util/Map$Entry;

    .line 119
    iput p4, p0, Lkxm;->e:I

    .line 120
    iput p5, p0, Lkxm;->f:I

    .line 121
    return-void
.end method

.method static a(I[Ljava/util/Map$Entry;)Lkxm;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Lkxm",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    move-object/from16 v0, p1

    array-length v1, v0

    move/from16 v0, p0

    invoke-static {v0, v1}, Lfii;->b(II)I

    .line 58
    invoke-static/range {p0 .. p0}, Lkrt;->b(I)I

    move-result v1

    .line 59
    add-int/lit8 v5, v1, -0x1

    .line 1045
    new-array v2, v1, [Lkss;

    .line 2045
    new-array v3, v1, [Lkss;

    .line 63
    move-object/from16 v0, p1

    array-length v1, v0

    move/from16 v0, p0

    if-ne v0, v1, :cond_0

    move-object/from16 v4, p1

    .line 68
    :goto_0
    const/4 v6, 0x0

    .line 70
    const/4 v1, 0x0

    move v10, v1

    :goto_1
    move/from16 v0, p0

    if-ge v10, v0, :cond_6

    .line 72
    aget-object v7, p1, v10

    .line 73
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .line 74
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 75
    invoke-static {v11, v12}, Laal;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v13

    .line 77
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v14

    .line 78
    invoke-static {v13}, Lkrt;->a(I)I

    move-result v1

    and-int v15, v1, v5

    .line 79
    invoke-static {v14}, Lkrt;->a(I)I

    move-result v1

    and-int v16, v1, v5

    .line 81
    aget-object v17, v2, v15

    .line 82
    move-object/from16 v0, v17

    invoke-static {v11, v7, v0}, Lkxs;->a(Ljava/lang/Object;Ljava/util/Map$Entry;Lkss;)V

    .line 83
    aget-object v9, v3, v16

    move-object v8, v9

    .line 3127
    :goto_2
    if-eqz v8, :cond_2

    .line 3128
    invoke-virtual {v8}, Lkss;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_3
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-static {v1, v0, v7, v8}, Lkxm;->a(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 3127
    invoke-virtual {v8}, Lkss;->b()Lkss;

    move-result-object v1

    move-object v8, v1

    goto :goto_2

    .line 3045
    :cond_0
    move/from16 v0, p0

    new-array v4, v0, [Lkss;

    goto :goto_0

    .line 3128
    :cond_1
    const/4 v1, 0x0

    goto :goto_3

    .line 86
    :cond_2
    if-nez v9, :cond_5

    if-nez v17, :cond_5

    .line 93
    instance-of v1, v7, Lkss;

    if-eqz v1, :cond_3

    move-object v1, v7

    check-cast v1, Lkss;

    .line 94
    invoke-virtual {v1}, Lkss;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 95
    :goto_4
    if-eqz v1, :cond_4

    .line 96
    check-cast v7, Lkss;

    .line 102
    :goto_5
    aput-object v7, v2, v15

    .line 103
    aput-object v7, v3, v16

    .line 104
    aput-object v7, v4, v10

    .line 105
    xor-int v1, v13, v14

    add-int/2addr v6, v1

    .line 70
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_1

    .line 94
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 97
    :cond_4
    new-instance v7, Lkss;

    invoke-direct {v7, v11, v12}, Lkss;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 99
    :cond_5
    new-instance v7, Lkst;

    move-object/from16 v0, v17

    invoke-direct {v7, v11, v12, v0, v9}, Lkst;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkss;Lkss;)V

    goto :goto_5

    .line 107
    :cond_6
    new-instance v1, Lkxm;

    invoke-direct/range {v1 .. v6}, Lkxm;-><init>([Lkss;[Lkss;[Ljava/util/Map$Entry;II)V

    return-object v1
.end method


# virtual methods
.method public a()Lkrw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkrw",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lkxm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5042
    sget-object v0, Lkxm;->b:Lkxm;

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 172
    :cond_1
    iget-object v0, p0, Lkxm;->h:Lkrw;

    .line 173
    if-nez v0, :cond_0

    new-instance v0, Lkxn;

    .line 5176
    invoke-direct {v0, p0}, Lkxn;-><init>(Lkxm;)V

    .line 173
    iput-object v0, p0, Lkxm;->h:Lkrw;

    goto :goto_0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method f()Lkth;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkth",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Lkxm;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4051
    sget-object v0, Lkxt;->a:Lkxt;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lksx;

    iget-object v1, p0, Lkxm;->d:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lksx;-><init>(Lksm;[Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lkxm;->g:[Lkss;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkxm;->g:[Lkss;

    iget v1, p0, Lkxm;->e:I

    invoke-static {p1, v0, v1}, Lkxs;->a(Ljava/lang/Object;[Lkss;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lkxm;->f:I

    return v0
.end method

.method i()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lkxm;->d:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
