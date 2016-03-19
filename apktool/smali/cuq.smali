.class public final Lcuq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcuq;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcuq;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 1088
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->b()V

    .line 320
    iget-object v0, p0, Lcuq;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 2088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->d:Loq;

    .line 320
    invoke-virtual {v0}, Loq;->a()V

    .line 321
    return-void
.end method
