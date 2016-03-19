.class public final Lhix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhkr;


# instance fields
.field private a:Lhks;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lhix;->a:Lhks;

    .line 35
    const/4 v0, 0x1

    .line 1014
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioMute(Z)V

    .line 36
    return-void
.end method

.method public a(Lhks;)V
    .locals 1

    .prologue
    .line 25
    iput-object p1, p0, Lhix;->a:Lhks;

    .line 26
    iget-boolean v0, p0, Lhix;->b:Z

    invoke-virtual {p0, v0}, Lhix;->c_(Z)V

    .line 27
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lhix;->c_(Z)V

    .line 41
    return-void
.end method

.method public c_(Z)V
    .locals 1

    .prologue
    .line 50
    iput-boolean p1, p0, Lhix;->b:Z

    .line 51
    iget-object v0, p0, Lhix;->a:Lhks;

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 2014
    :goto_1
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioMute(Z)V

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
