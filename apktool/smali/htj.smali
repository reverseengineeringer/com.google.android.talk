.class final Lhtj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:F

.field b:F

.field c:Lorg/json/JSONObject;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lhti;


# direct methods
.method public constructor <init>(Lhti;Landroid/content/Context;ILjava/util/Map;FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;FF)V"
        }
    .end annotation

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 178
    iput-object p1, p0, Lhtj;->e:Lhti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput v0, p0, Lhtj;->a:F

    .line 180
    iput v0, p0, Lhtj;->b:F

    .line 1221
    iget-object v0, p1, Lhti;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1222
    if-nez v0, :cond_0

    .line 1223
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p2, p3}, Lhti;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1224
    iget-object v1, p1, Lhti;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    :cond_0
    iput-object v0, p0, Lhtj;->c:Lorg/json/JSONObject;

    .line 182
    iput-object p4, p0, Lhtj;->d:Ljava/util/Map;

    .line 183
    return-void
.end method


# virtual methods
.method public a(Landroid/util/Property;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 186
    iget v0, p0, Lhtj;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    sget-object v0, Lhto;->e:Landroid/util/Property;

    if-eq p1, v0, :cond_2

    :cond_0
    iget v0, p0, Lhtj;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    sget-object v0, Lhto;->f:Landroid/util/Property;

    if-eq p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
