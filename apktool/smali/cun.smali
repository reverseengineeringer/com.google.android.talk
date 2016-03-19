.class public final Lcun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lgpt;

.field final synthetic b:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;Lgpt;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcun;->b:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    iput-object p2, p0, Lcun;->a:Lgpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcun;->b:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 1088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->c:Lcva;

    .line 147
    iget-object v1, p0, Lcun;->a:Lgpt;

    .line 148
    invoke-interface {v1}, Lgpt;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcun;->a:Lgpt;

    invoke-interface {v2}, Lgpt;->e()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-interface {v0, v1, v2}, Lcva;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method
