.class Lfy;
.super Lfx;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lfx;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1041
    sget-boolean v0, Laen;->k:Z

    if-nez v0, :cond_0

    .line 1043
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "setLayoutDirection"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1045
    sput-object v0, Laen;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1049
    :goto_0
    sput-boolean v5, Laen;->k:Z

    .line 1052
    :cond_0
    sget-object v0, Laen;->j:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 1054
    :try_start_1
    sget-object v0, Laen;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1058
    :cond_1
    :goto_1
    return-void

    .line 1057
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Laen;->j:Ljava/lang/reflect/Method;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .prologue
    .line 125
    invoke-static {p1}, Laen;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 126
    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
