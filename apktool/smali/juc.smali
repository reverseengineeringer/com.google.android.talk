.class public final Ljuc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljtn;


# direct methods
.method private constructor <init>(Ljtn;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Ljuc;->a:Ljtn;

    .line 37
    return-void
.end method

.method public static a(Ljuc;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 30
    :goto_0
    return-object p1

    .line 1041
    :cond_0
    iget-object v0, p0, Ljuc;->a:Ljtn;

    .line 30
    invoke-static {v0, p1}, Ljua;->a(Ljtn;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    goto :goto_0
.end method

.method public static a()Ljuc;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljuc;

    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v1

    invoke-direct {v0, v1}, Ljuc;-><init>(Ljtn;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ljuc;->a:Ljtn;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "null ref"

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljuc;->a:Ljtn;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
