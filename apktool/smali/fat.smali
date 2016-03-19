.class final Lfat;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lfar;


# direct methods
.method constructor <init>(Lfar;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lfat;->a:Lfar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lfat;->a:Lfar;

    invoke-virtual {v0, p2}, Lfar;->a(Landroid/content/Intent;)V

    .line 404
    return-void
.end method
