.class final Lesi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lesh;


# direct methods
.method constructor <init>(Lesh;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lesi;->a:Lesh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallRequest, answering a new call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lesi;->a:Lesh;

    iget-object v0, v0, Lesh;->a:Leue;

    .line 1033
    invoke-virtual {v0}, Leue;->d()V

    .line 142
    return-void
.end method
