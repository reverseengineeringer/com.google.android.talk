.class final Lhxi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[I


# instance fields
.field private final b:I

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lhxh;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lhxi;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhxi;->c:Ljava/util/Map;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lhxi;->d:I

    .line 48
    iput p1, p0, Lhxi;->b:I

    .line 49
    return-void
.end method


# virtual methods
.method protected a(Lhxh;)Lhxh;
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lhxi;->b:I

    invoke-virtual {p1, v0}, Lhxh;->b(I)V

    .line 88
    iget-object v0, p0, Lhxi;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lhxh;->b()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhxh;

    return-object v0
.end method

.method protected a(S)Lhxh;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lhxi;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhxh;

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lhxi;->d:I

    .line 114
    return-void
.end method

.method protected a()[Lhxh;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lhxi;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lhxi;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lhxh;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhxh;

    return-object v0
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lhxi;->b:I

    return v0
.end method

.method protected b(S)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lhxi;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lhxi;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lhxi;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    if-ne p0, p1, :cond_0

    move v0, v1

    .line 151
    :goto_0
    return v0

    .line 132
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 133
    goto :goto_0

    .line 135
    :cond_1
    instance-of v0, p1, Lhxi;

    if-eqz v0, :cond_4

    .line 136
    check-cast p1, Lhxi;

    .line 137
    invoke-virtual {p1}, Lhxi;->b()I

    move-result v0

    iget v3, p0, Lhxi;->b:I

    if-ne v0, v3, :cond_4

    invoke-virtual {p1}, Lhxi;->c()I

    move-result v0

    invoke-virtual {p0}, Lhxi;->c()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 138
    invoke-virtual {p1}, Lhxi;->a()[Lhxh;

    move-result-object v4

    .line 139
    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    .line 140
    invoke-virtual {v6}, Lhxh;->b()S

    move-result v0

    invoke-static {v0}, Lhww;->a(S)Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    iget-object v0, p0, Lhxi;->c:Ljava/util/Map;

    invoke-virtual {v6}, Lhxh;->b()S

    move-result v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhxh;

    .line 144
    invoke-virtual {v6, v0}, Lhxh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 145
    goto :goto_0

    .line 139
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 148
    goto :goto_0

    :cond_4
    move v0, v2

    .line 151
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lhxi;->b:I

    add-int/lit16 v0, v0, 0x20f

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lhxi;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    return v0
.end method
