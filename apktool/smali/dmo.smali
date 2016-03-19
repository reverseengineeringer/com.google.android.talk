.class public final Ldmo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Lczb;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method private constructor <init>(Ljxy;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object v1, p1, Ljxy;->a:Lkcr;

    invoke-static {v1, v0}, Laal;->a(Lkcr;Ljava/lang/String;)Lczb;

    move-result-object v1

    iput-object v1, p0, Ldmo;->a:Lczb;

    .line 24
    iget-object v1, p1, Ljxy;->b:Ljava/lang/String;

    iput-object v1, p0, Ldmo;->c:Ljava/lang/String;

    .line 25
    iget-object v1, p1, Ljxy;->e:Llcf;

    if-nez v1, :cond_0

    .line 26
    :goto_0
    iput-object v0, p0, Ldmo;->b:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Ljxy;->c:Ljava/lang/Integer;

    .line 1043
    const/4 v1, 0x0

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 27
    iput v0, p0, Ldmo;->d:I

    .line 28
    return-void

    .line 26
    :cond_0
    iget-object v0, p1, Ljxy;->e:Llcf;

    iget-object v0, v0, Llcf;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a([Ljxy;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljxy;",
            ")",
            "Ljava/util/List",
            "<",
            "Ldmo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 36
    new-instance v4, Ldmo;

    invoke-direct {v4, v3}, Ldmo;-><init>(Ljxy;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    if-eqz p1, :cond_0

    instance-of v0, p1, Ldmo;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v2

    .line 47
    :cond_1
    check-cast p1, Ldmo;

    .line 48
    iget-object v0, p0, Ldmo;->a:Lczb;

    if-nez v0, :cond_3

    .line 49
    iget-object v0, p1, Ldmo;->a:Lczb;

    if-nez v0, :cond_2

    move v0, v1

    .line 51
    :goto_1
    iget-object v3, p0, Ldmo;->b:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 52
    iget-object v3, p1, Ldmo;->b:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    .line 53
    :goto_2
    iget-object v4, p0, Ldmo;->c:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 54
    iget-object v4, p1, Ldmo;->c:Ljava/lang/String;

    if-nez v4, :cond_6

    move v4, v1

    .line 56
    :goto_3
    iget v5, p0, Ldmo;->d:I

    iget v6, p1, Ldmo;->d:I

    if-ne v5, v6, :cond_8

    move v5, v1

    .line 57
    :goto_4
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    iget-object v0, p0, Ldmo;->a:Lczb;

    iget-object v3, p1, Ldmo;->a:Lczb;

    invoke-virtual {v0, v3}, Lczb;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    move v3, v2

    .line 52
    goto :goto_2

    :cond_5
    iget-object v3, p0, Ldmo;->b:Ljava/lang/String;

    iget-object v4, p1, Ldmo;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_6
    move v4, v2

    .line 54
    goto :goto_3

    .line 55
    :cond_7
    iget-object v4, p0, Ldmo;->c:Ljava/lang/String;

    iget-object v5, p1, Ldmo;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_3

    :cond_8
    move v5, v2

    .line 56
    goto :goto_4
.end method
