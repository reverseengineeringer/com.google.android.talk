.class public Lcfx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcfx;->a:I

    .line 25
    iput-boolean p2, p0, Lcfx;->b:Z

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;Lcgs;)V
    .locals 2

    .prologue
    .line 49
    const/16 v0, 0x3ec

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcfx;->a(Landroid/content/Context;Lcgs;IZ)V

    .line 50
    return-void
.end method

.method public static a(Landroid/content/Context;Lcgs;IZ)V
    .locals 3

    .prologue
    .line 38
    const-class v0, Lcfx;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    const-string v1, "HISTORY_HAS_EVENT"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-virtual {p1, v0}, Lcgs;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 42
    const-string v1, "HISTORY_ERROR"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 43
    const-string v1, "HISTORY_EXIT_REPORTED"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcfx;->a:I

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcfx;->b:Z

    return v0
.end method
