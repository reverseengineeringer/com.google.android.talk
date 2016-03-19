.class final Lbzl;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbzm;

.field final synthetic b:Lbzk;


# direct methods
.method constructor <init>(Lbzk;Lbzm;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lbzl;->b:Lbzk;

    iput-object p2, p0, Lbzl;->a:Lbzm;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lbzl;->b:Lbzk;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1013
    :goto_0
    iput-boolean v0, v1, Lbzk;->a:Z

    .line 61
    iget-object v0, p0, Lbzl;->a:Lbzm;

    invoke-virtual {v0}, Lbzm;->a()V

    .line 62
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
