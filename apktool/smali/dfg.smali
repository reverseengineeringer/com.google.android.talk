.class public final Ldfg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/hangouts/phone/DebugActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/hangouts/phone/DebugActivity;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Ldfg;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    .line 218
    iget-object v0, p0, Ldfg;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 219
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/phone/DebugActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Ldfg;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 1084
    iget-object v0, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity;->g:Lbfd;

    .line 219
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v3

    const-string v4, "DEBUG_RTCS"

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    .line 218
    :goto_0
    invoke-static {v2, v3, v4, v0, v1}, Lbff;->b(Landroid/content/Context;ILjava/lang/String;J)V

    .line 220
    iget-object v0, p0, Ldfg;->a:Lcom/google/android/apps/hangouts/phone/DebugActivity;

    .line 2084
    iput-boolean p2, v0, Lcom/google/android/apps/hangouts/phone/DebugActivity;->h:Z

    .line 221
    return-void

    .line 219
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
