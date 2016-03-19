.class final Lhza;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lhza;

.field public b:Lhza;

.field final c:Lhyt;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhyt;)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p0, p0, Lhza;->a:Lhza;

    .line 141
    iput-object p0, p0, Lhza;->b:Lhza;

    .line 147
    iput-object p1, p0, Lhza;->c:Lhyt;

    .line 148
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lhza;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhza;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lhza;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhza;->d:Ljava/util/List;

    .line 158
    :cond_0
    iget-object v0, p0, Lhza;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lhza;->a()I

    move-result v0

    .line 164
    if-eqz v0, :cond_0

    iget-object v1, p0, Lhza;->d:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
