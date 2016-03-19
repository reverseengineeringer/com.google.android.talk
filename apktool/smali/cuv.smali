.class final Lcuv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcve;

.field final synthetic b:Lcuu;


# direct methods
.method constructor <init>(Lcuu;Lcve;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcuv;->b:Lcuu;

    iput-object p2, p0, Lcuv;->a:Lcve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcuv;->a:Lcve;

    iget-object v1, p0, Lcuv;->b:Lcuu;

    iget-object v1, v1, Lcuu;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->getActivity()Lba;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcve;->a(Landroid/app/Activity;)V

    .line 664
    return-void
.end method
