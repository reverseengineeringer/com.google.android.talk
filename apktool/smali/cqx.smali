.class final Lcqx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcqs;


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "latency_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcqx;->a:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method


# virtual methods
.method public a(I)Lcqr;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcqw;

    iget-object v1, p0, Lcqx;->a:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, p1}, Lcqw;-><init>(Landroid/content/SharedPreferences;I)V

    return-object v0
.end method
