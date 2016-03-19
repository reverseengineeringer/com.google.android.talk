.class final Lcfl;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcfc;


# direct methods
.method constructor <init>(Lcfc;)V
    .locals 0

    .prologue
    .line 1197
    iput-object p1, p0, Lcfl;->a:Lcfc;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 1201
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1202
    iget-object v0, p0, Lcfl;->a:Lcfc;

    .line 2095
    iget-object v0, v0, Lcfc;->q:Lcgw;

    .line 1202
    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcfl;->a:Lcfc;

    .line 3095
    iget-object v0, v0, Lcfc;->q:Lcgw;

    .line 1203
    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcgw;->b(I)V

    .line 3180
    :cond_0
    sget-object v0, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->b:Lcom/google/android/apps/hangouts/hangout/IncomingRing;

    .line 1207
    if-eqz v0, :cond_1

    .line 1208
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/IncomingRing;->n()V

    .line 1211
    :cond_1
    return-void
.end method
