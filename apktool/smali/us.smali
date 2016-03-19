.class public final Lus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lur;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Luq;


# direct methods
.method constructor <init>(Luq;)V
    .locals 1

    .prologue
    .line 2917
    iput-object p1, p0, Lus;->b:Luq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2920
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lus;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lur;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1925
    iget-object v4, p0, Lus;->a:Ljava/util/Map;

    .line 1927
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 1929
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1930
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1931
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lur;

    .line 1932
    const/4 v3, 0x0

    iput v3, v0, Lur;->b:F

    .line 1933
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, v0, Lur;->a:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lur;->a:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1939
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1940
    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v0

    .line 1941
    :goto_1
    if-ltz v3, :cond_1

    .line 1942
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lut;

    .line 1943
    iget-object v1, v0, Lut;->a:Landroid/content/ComponentName;

    .line 1944
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lur;

    .line 1945
    if-eqz v1, :cond_2

    .line 1946
    iget v5, v1, Lur;->b:F

    iget v0, v0, Lut;->c:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    iput v0, v1, Lur;->b:F

    .line 1947
    const v0, 0x3f733333    # 0.95f

    mul-float/2addr v0, v2

    .line 1941
    :goto_2
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v2, v0

    goto :goto_1

    .line 1951
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1958
    return-void

    :cond_2
    move v0, v2

    goto :goto_2
.end method
