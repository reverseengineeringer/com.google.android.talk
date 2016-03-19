.class public final Leua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leqs;
.implements Leqv;
.implements Letx;
.implements Leui;


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field c:Lerg;

.field d:Lcgw;

.field e:I

.field f:Z

.field g:Ljava/lang/String;

.field h:Lero;

.field i:Leuc;

.field j:I

.field k:Ljava/lang/Runnable;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leqt;",
            ">;"
        }
    .end annotation
.end field

.field private m:Leue;

.field private n:Leud;

.field private o:J

.field private p:J

.field private q:Leuh;

.field private r:Lequ;

.field private s:Lesx;

.field private t:Z

.field private u:Letv;


# direct methods
.method constructor <init>(Landroid/content/Context;Leue;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Leua;->l:Ljava/util/List;

    .line 141
    iput-object p1, p0, Leua;->a:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Leua;->m:Leue;

    .line 143
    iput-object p3, p0, Leua;->b:Ljava/lang/String;

    .line 144
    if-nez p4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lesx;

    invoke-direct {v0, p0}, Lesx;-><init>(Leqs;)V

    iput-object v0, p0, Leua;->s:Lesx;

    .line 146
    iget-object v0, p0, Leua;->s:Lesx;

    invoke-virtual {p0, v0}, Leua;->a(Leqt;)V

    .line 148
    :cond_0
    return-void
.end method

.method static a(Ljuf;Z)I
    .locals 4

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x5

    .line 780
    iget-object v2, p0, Ljuf;->b:Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 781
    const/4 v1, 0x6

    .line 782
    if-eqz p1, :cond_1

    .line 784
    const/16 v0, 0xb38

    .line 782
    :goto_0
    invoke-static {v0}, Laal;->c(I)V

    move v0, v1

    .line 807
    :cond_0
    :goto_1
    return v0

    .line 785
    :cond_1
    const/16 v0, 0xb39

    goto :goto_0

    .line 786
    :cond_2
    iget-object v2, p0, Ljuf;->b:Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 788
    if-eqz p1, :cond_3

    .line 790
    const/16 v0, 0xb36

    .line 788
    :goto_2
    invoke-static {v0}, Laal;->c(I)V

    move v0, v1

    goto :goto_1

    .line 791
    :cond_3
    const/16 v0, 0xb37

    goto :goto_2

    .line 792
    :cond_4
    iget-object v2, p0, Ljuf;->b:Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 793
    const/4 v1, 0x7

    .line 794
    if-eqz p1, :cond_5

    .line 796
    const/16 v0, 0xb3a

    .line 794
    :goto_3
    invoke-static {v0}, Laal;->c(I)V

    move v0, v1

    goto :goto_1

    .line 797
    :cond_5
    const/16 v0, 0xb3b

    goto :goto_3

    .line 798
    :cond_6
    iget-object v2, p0, Ljuf;->b:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 799
    const/16 v1, 0x9

    .line 800
    if-eqz p1, :cond_7

    .line 802
    const/16 v0, 0xb34

    .line 800
    :goto_4
    invoke-static {v0}, Laal;->c(I)V

    move v0, v1

    goto :goto_1

    .line 803
    :cond_7
    const/16 v0, 0xb35

    goto :goto_4

    .line 804
    :cond_8
    iget-object v1, p0, Ljuf;->b:Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method static a(Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;Lerg;)V
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 117
    check-cast v0, Lerg;

    .line 118
    if-eq v0, p1, :cond_1

    invoke-static {v0}, Leua;->b(Lerg;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    :cond_1
    invoke-virtual {v0}, Lerg;->onHold()V

    goto :goto_0

    .line 122
    :cond_2
    return-void
.end method

.method static a(Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;)Z
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 106
    check-cast v0, Lerg;

    .line 107
    invoke-static {v0}, Leua;->b(Lerg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;Lerg;)V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 127
    check-cast v0, Lerg;

    .line 128
    if-eq v0, p1, :cond_1

    invoke-static {v0}, Leua;->b(Lerg;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    :cond_1
    invoke-virtual {v0}, Lerg;->onUnhold()V

    goto :goto_0

    .line 132
    :cond_2
    return-void
.end method

.method public static b(Lerg;)Z
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lerg;->j()Leqs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lerg;->j()Leqs;

    move-result-object v0

    invoke-interface {v0}, Leqs;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 739
    iget-object v0, p0, Leua;->d:Lcgw;

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 741
    :goto_0
    const-string v2, "Babel_telephony"

    iget-object v3, p0, Leua;->c:Lerg;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x50

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleWifiCall.updateHangoutAudioState, muteMic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", shouldMuteSpeaker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcfc;->a(Z)V

    .line 744
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcfc;->b(Z)V

    .line 746
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 740
    goto :goto_0
.end method

.method private e(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 723
    iget-object v0, p0, Leua;->c:Lerg;

    if-nez v0, :cond_0

    .line 724
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.handoffToCircuitSwitched, connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    :goto_0
    return-void

    .line 727
    :cond_0
    const-string v0, "Babel_telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x41

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "TeleWifiCall.handoffToCircuitSwitched, handoffReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    const/16 v0, 0xb58

    invoke-static {v0}, Laal;->c(I)V

    .line 733
    :goto_1
    invoke-virtual {p0, p1}, Leua;->c(I)V

    .line 734
    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v0, v1, p1}, Leru;->a(Landroid/content/Context;Lerg;I)V

    .line 735
    invoke-virtual {p0}, Leua;->b()V

    goto :goto_0

    .line 731
    :cond_1
    const/16 v0, 0xb55

    invoke-static {v0}, Laal;->c(I)V

    goto :goto_1
.end method

.method private f(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 749
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.exitHangout, cause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    iget-object v0, p0, Leua;->d:Lcgw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leua;->d:Lcgw;

    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v1

    invoke-virtual {v1}, Lcfc;->r()Lcgw;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 752
    invoke-direct {p0}, Leua;->r()V

    .line 753
    iget-object v0, p0, Leua;->d:Lcgw;

    invoke-virtual {v0, p1}, Lcgw;->b(I)V

    .line 759
    :goto_0
    return-void

    .line 755
    :cond_0
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x48

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.exitHangout, hangout has already exited, short circuiting, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 757
    invoke-virtual {p0, p1}, Leua;->d(I)Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Leua;->a(Landroid/telecom/DisconnectCause;)V

    goto :goto_0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Leua;->c:Lerg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leua;->d:Lcgw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leua;->d:Lcgw;

    .line 180
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v1

    invoke-virtual {v1}, Lcfc;->r()Lcgw;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Leua;->c:Lerg;

    iget-object v1, p0, Leua;->d:Lcgw;

    invoke-virtual {v1}, Lcgw;->e()Lcgs;

    move-result-object v1

    invoke-virtual {v1}, Lcgs;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lerg;->c(Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method private s()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 597
    iget-object v1, p0, Leua;->d:Lcgw;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leua;->c:Lerg;

    if-nez v1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return v0

    .line 601
    :cond_1
    iget-object v1, p0, Leua;->a:Landroid/content/Context;

    iget-object v2, p0, Leua;->c:Lerg;

    invoke-virtual {v2}, Lerg;->h()Lest;

    move-result-object v2

    invoke-virtual {v2}, Lest;->c()I

    move-result v2

    iget-object v3, p0, Leua;->c:Lerg;

    .line 602
    invoke-virtual {v3}, Lerg;->g()Z

    move-result v3

    .line 601
    invoke-static {v1, v2, v3}, Laal;->a(Landroid/content/Context;IZ)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Leua;->a:Landroid/content/Context;

    iget-object v2, p0, Leua;->c:Lerg;

    .line 603
    invoke-virtual {v2}, Lerg;->h()Lest;

    move-result-object v2

    invoke-virtual {v2}, Lest;->c()I

    move-result v2

    iget-object v3, p0, Leua;->c:Lerg;

    .line 604
    invoke-virtual {v3}, Lerg;->g()Z

    move-result v3

    .line 603
    invoke-static {v1, v2, v3}, Laal;->b(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 605
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 609
    :cond_3
    iget-object v1, p0, Leua;->c:Lerg;

    invoke-virtual {v1}, Lerg;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 610
    iget-object v1, p0, Leua;->a:Landroid/content/Context;

    const-string v2, "babel_lte_incoming_call_allowed"

    invoke-static {v1, v2, v0}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 612
    :cond_4
    iget-object v1, p0, Leua;->a:Landroid/content/Context;

    const-string v2, "babel_lte_outgoing_call_allowed"

    invoke-static {v1, v2, v0}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private t()V
    .locals 4

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leua;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    const-string v1, "babel_handoff_lte_reconnect_timeout_millis"

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 623
    iget-object v1, p0, Leua;->k:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 624
    new-instance v1, Leub;

    invoke-direct {v1, p0}, Leub;-><init>(Leua;)V

    iput-object v1, p0, Leua;->k:Ljava/lang/Runnable;

    .line 633
    :cond_1
    iget-object v1, p0, Leua;->k:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private u()V
    .locals 3

    .prologue
    .line 762
    const/16 v0, 0x42

    .line 763
    iget-object v1, p0, Leua;->c:Lerg;

    invoke-virtual {v1}, Lerg;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Leua;->c:Lerg;

    .line 764
    invoke-virtual {v1}, Lerg;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 765
    :cond_0
    const/16 v0, 0x43

    .line 767
    :cond_1
    iget-object v1, p0, Leua;->c:Lerg;

    invoke-virtual {v1}, Lerg;->getConnectionCapabilities()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 768
    iget-object v1, p0, Leua;->c:Lerg;

    invoke-virtual {v1, v0}, Lerg;->setConnectionCapabilities(I)V

    .line 770
    :cond_2
    return-void
.end method

.method private v()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 829
    iget-wide v0, p0, Leua;->o:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 830
    const-wide/16 v0, -0x1

    .line 836
    :goto_0
    return-wide v0

    .line 832
    :cond_0
    iget-wide v0, p0, Leua;->p:J

    .line 833
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 834
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 836
    :cond_1
    iget-wide v2, p0, Leua;->o:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()Lerg;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Leua;->c:Lerg;

    return-object v0
.end method

.method public a(C)V
    .locals 5

    .prologue
    .line 407
    const-string v0, "Babel_telephony"

    .line 408
    invoke-static {p1}, Laal;->a(C)C

    move-result v1

    iget-object v2, p0, Leua;->c:Lerg;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TeleWifiCall.onPlayDtmfTone, c: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 407
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    iget-object v0, p0, Leua;->d:Lcgw;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Leua;->d:Lcgw;

    invoke-virtual {v0, p1}, Lcgw;->a(C)V

    .line 412
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 497
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onStateChanged, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 3846
    iget-wide v0, p0, Leua;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3847
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Leua;->p:J

    .line 501
    :cond_0
    iget-object v0, p0, Leua;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqt;

    .line 502
    invoke-interface {v0, p0, p1}, Leqt;->a(Leqs;I)V

    goto :goto_0

    .line 504
    :cond_1
    invoke-direct {p0}, Leua;->u()V

    .line 506
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_2

    .line 508
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->x()V

    .line 511
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 512
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v0

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v0, v1}, Leua;->b(Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;Lerg;)V

    .line 514
    :cond_3
    return-void
.end method

.method public a(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 297
    const-string v0, "Babel_telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x5a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "TeleWifiCall.disconnectForHandoff, handoffReason + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new call code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    if-nez p2, :cond_0

    .line 300
    const/16 v0, 0x3f7

    invoke-direct {p0, v0}, Leua;->f(I)V

    .line 308
    :goto_0
    return-void

    .line 301
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 3818
    const-string v0, "Babel_telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x33

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "TeleWifiCall.setHandoffEventCode, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3819
    iget-object v0, p0, Leua;->d:Lcgw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leua;->d:Lcgw;

    invoke-virtual {v0}, Lcgw;->q()Lhcs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3820
    iget-object v0, p0, Leua;->d:Lcgw;

    invoke-virtual {v0}, Lcgw;->q()Lhcs;

    move-result-object v0

    invoke-virtual {v0}, Lhcs;->k()Lhcw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lhcw;->c(I)V

    .line 304
    :cond_1
    const/16 v0, 0x3fa

    invoke-direct {p0, v0}, Leua;->f(I)V

    goto :goto_0

    .line 306
    :cond_2
    const/16 v0, 0x3ec

    invoke-direct {p0, v0}, Leua;->f(I)V

    goto :goto_0
.end method

.method public a(Landroid/telecom/AudioState;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 401
    const-string v1, "Babel_telephony"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Leua;->c:Lerg;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2b

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleWifiCall.onAudioStateChanged, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/AudioState;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Leua;->d(Z)V

    .line 403
    return-void
.end method

.method a(Landroid/telecom/DisconnectCause;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 194
    const-string v0, "Babel_telephony"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Leua;->c:Lerg;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1d

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TeleWifiCall.close, cause: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-direct {p0}, Leua;->r()V

    .line 197
    iget-object v0, p0, Leua;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Leua;->k:Ljava/lang/Runnable;

    .line 2089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    iput-object v6, p0, Leua;->k:Ljava/lang/Runnable;

    .line 201
    :cond_0
    iget-object v0, p0, Leua;->n:Leud;

    if-eqz v0, :cond_1

    .line 202
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    iget-object v1, p0, Leua;->n:Leud;

    invoke-virtual {v0, v1}, Lcfc;->b(Lhku;)V

    .line 203
    iput-object v6, p0, Leua;->n:Leud;

    .line 205
    :cond_1
    iget-object v0, p0, Leua;->m:Leue;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Leua;->m:Leue;

    invoke-virtual {v0}, Leue;->b()V

    .line 207
    iput-object v6, p0, Leua;->m:Leue;

    .line 209
    :cond_2
    iget-object v0, p0, Leua;->q:Leuh;

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Leua;->q:Leuh;

    invoke-virtual {v0}, Leuh;->a()V

    .line 211
    iput-object v6, p0, Leua;->q:Leuh;

    .line 213
    :cond_3
    iget-object v0, p0, Leua;->u:Letv;

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Leua;->u:Letv;

    invoke-virtual {v0}, Letv;->a()V

    .line 215
    iput-object v6, p0, Leua;->u:Letv;

    .line 217
    :cond_4
    iget-object v0, p0, Leua;->r:Lequ;

    if-eqz v0, :cond_5

    .line 218
    iget-object v0, p0, Leua;->r:Lequ;

    invoke-virtual {v0}, Lequ;->a()V

    .line 219
    iput-object v6, p0, Leua;->r:Lequ;

    .line 221
    :cond_5
    iget-object v0, p0, Leua;->s:Lesx;

    if-eqz v0, :cond_6

    .line 222
    iget-object v0, p0, Leua;->s:Lesx;

    invoke-virtual {p0, v0}, Leua;->b(Leqt;)V

    .line 223
    iput-object v6, p0, Leua;->s:Lesx;

    .line 225
    :cond_6
    iget-object v0, p0, Leua;->i:Leuc;

    if-eqz v0, :cond_7

    .line 226
    iget-object v0, p0, Leua;->i:Leuc;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    .line 227
    iput-object v6, p0, Leua;->i:Leuc;

    .line 229
    :cond_7
    iget-object v0, p0, Leua;->c:Lerg;

    if-eqz v0, :cond_a

    .line 231
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {p0}, Leua;->d()I

    move-result v1

    invoke-direct {p0}, Leua;->v()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lerg;->a(IJ)V

    .line 233
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->k()Leru;

    move-result-object v0

    if-nez v0, :cond_a

    .line 234
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->x()V

    .line 235
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 236
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-virtual {v0, v1}, Landroid/telecom/Conference;->removeConnection(Landroid/telecom/Connection;)V

    .line 238
    :cond_8
    if-eqz p1, :cond_9

    .line 239
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0, p1}, Lerg;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 240
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-static {v0, p1}, Laal;->a(Lerg;Landroid/telecom/DisconnectCause;)V

    .line 242
    :cond_9
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->destroy()V

    .line 245
    :cond_a
    iput-object v6, p0, Leua;->c:Lerg;

    .line 246
    iput-object v6, p0, Leua;->d:Lcgw;

    .line 247
    iget-object v0, p0, Leua;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqt;

    .line 248
    invoke-interface {v0, p0, p1}, Leqt;->a(Leqs;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 250
    :cond_b
    return-void
.end method

.method a(Lcgw;)V
    .locals 6

    .prologue
    .line 160
    const-string v0, "Babel_telephony"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Leua;->c:Lerg;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TeleWifiCall.setHangoutState, hangoutState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iput-object p1, p0, Leua;->d:Lcgw;

    .line 163
    iget-object v0, p0, Leua;->d:Lcgw;

    invoke-virtual {v0}, Lcgw;->C()Z

    move-result v0

    iput-boolean v0, p0, Leua;->f:Z

    .line 164
    iget-object v0, p0, Leua;->n:Leud;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Leud;

    .line 1983
    invoke-direct {v0, p0}, Leud;-><init>(Leua;)V

    .line 165
    iput-object v0, p0, Leua;->n:Leud;

    .line 166
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    iget-object v1, p0, Leua;->n:Leud;

    invoke-virtual {v0, v1}, Lcfc;->a(Lhku;)V

    .line 168
    :cond_0
    iget-object v0, p0, Leua;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leua;->c:Lerg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leua;->c:Lerg;

    .line 169
    invoke-virtual {v0}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->p(Landroid/content/Context;)V

    .line 172
    :cond_1
    return-void
.end method

.method public a(Leqs;)V
    .locals 6

    .prologue
    .line 395
    const-string v0, "Babel_telephony"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Leua;->c:Lerg;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x27

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TeleWifiCall.performConferenceWith : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    return-void
.end method

.method public a(Leqt;)V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Leua;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public a(Lerc;Z)V
    .locals 4

    .prologue
    .line 518
    invoke-direct {p0}, Leua;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const-string v0, "Babel_telephony"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onCellStateChanged, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , isConnectedToInternet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    invoke-direct {p0}, Leua;->t()V

    .line 524
    :cond_0
    return-void
.end method

.method public a(Lerg;)V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Leua;->c:Lerg;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 272
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {p0}, Leua;->d()I

    move-result v1

    invoke-direct {p0}, Leua;->v()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lerg;->a(IJ)V

    .line 274
    :cond_0
    iput-object p1, p0, Leua;->c:Lerg;

    .line 275
    iget-object v0, p0, Leua;->c:Lerg;

    if-eqz v0, :cond_4

    .line 276
    iget-object v0, p0, Leua;->c:Lerg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lerg;->setAudioModeIsVoip(Z)V

    .line 277
    invoke-direct {p0}, Leua;->u()V

    .line 278
    invoke-virtual {p0}, Leua;->b()V

    .line 2840
    iget-wide v0, p0, Leua;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2841
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Leua;->o:J

    .line 280
    :cond_1
    iget-object v0, p0, Leua;->q:Leuh;

    if-nez v0, :cond_2

    .line 281
    new-instance v0, Leuh;

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-virtual {v1}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v1

    invoke-direct {v0, v1}, Leuh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leua;->q:Leuh;

    .line 282
    iget-object v0, p0, Leua;->q:Leuh;

    invoke-virtual {v0, p0}, Leuh;->a(Leui;)V

    .line 284
    :cond_2
    iget-object v0, p0, Leua;->r:Lequ;

    if-nez v0, :cond_3

    .line 285
    new-instance v0, Lequ;

    iget-object v1, p0, Leua;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lequ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leua;->r:Lequ;

    .line 286
    iget-object v0, p0, Leua;->r:Lequ;

    invoke-virtual {v0, p0}, Lequ;->a(Leqv;)V

    .line 288
    :cond_3
    iget-object v0, p0, Leua;->u:Letv;

    if-nez v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 289
    new-instance v0, Letv;

    iget-object v1, p0, Leua;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Letv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leua;->u:Letv;

    .line 290
    iget-object v0, p0, Leua;->u:Letv;

    invoke-virtual {v0, p0}, Letv;->a(Letx;)V

    .line 293
    :cond_4
    return-void
.end method

.method public a(Lero;)V
    .locals 4

    .prologue
    .line 389
    const-string v0, "Babel_telephony"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.maybeAddExperiment, experiment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    iput-object p1, p0, Leua;->h:Lero;

    .line 391
    return-void
.end method

.method public a(Leum;)V
    .locals 5

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 565
    invoke-direct {p0}, Leua;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    const-string v0, "Babel_telephony"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onWifiStateChanged, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    invoke-direct {p0}, Leua;->t()V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    const-string v1, "phone"

    .line 570
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 571
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 572
    iget-object v1, p0, Leua;->c:Lerg;

    if-eqz v1, :cond_3

    .line 573
    iget-boolean v1, p1, Leum;->a:Z

    if-nez v1, :cond_2

    .line 574
    invoke-virtual {p0, v2}, Leua;->c(I)V

    .line 575
    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v0, v1, v2}, Leru;->a(Landroid/content/Context;Lerg;I)V

    goto :goto_0

    .line 577
    :cond_2
    iget-object v1, p0, Leua;->a:Landroid/content/Context;

    iget-object v2, p0, Leua;->c:Lerg;

    .line 578
    invoke-virtual {v2}, Lerg;->h()Lest;

    move-result-object v2

    .line 577
    invoke-static {v1, v2, p1, v0}, Laal;->a(Landroid/content/Context;Lest;Leum;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    invoke-virtual {p0, v3}, Leua;->c(I)V

    .line 580
    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v0, v1, v3}, Leru;->a(Landroid/content/Context;Lerg;I)V

    goto :goto_0

    .line 584
    :cond_3
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onWifiStateChanged, no connection, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 384
    iput-boolean p1, p0, Leua;->t:Z

    .line 385
    return-void
.end method

.method public b()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Leua;->c:Lerg;

    if-nez v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const-string v0, "Babel_telephony"

    iget-object v2, p0, Leua;->c:Lerg;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleWifiCall.updateStatusHints, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v4

    .line 317
    new-instance v5, Landroid/content/ComponentName;

    const-class v0, Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    invoke-direct {v5, v4, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->k()Leru;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leua;->c:Lerg;

    .line 322
    invoke-virtual {v0}, Lerg;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    .line 324
    invoke-static {v4}, Laal;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 326
    sget v2, Laal;->qH:I

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 327
    sget v0, Laal;->ql:I

    .line 344
    :goto_1
    if-nez v2, :cond_2

    .line 346
    invoke-static {v4}, Laal;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 347
    if-nez v0, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 348
    iget-boolean v0, p0, Leua;->t:Z

    if-eqz v0, :cond_5

    .line 349
    sget v0, Laal;->qj:I

    .line 356
    :cond_2
    :goto_2
    new-instance v6, Landroid/telecom/StatusHints;

    invoke-direct {v6, v5, v2, v0, v3}, Landroid/telecom/StatusHints;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    .line 357
    iget-object v3, p0, Leua;->c:Lerg;

    invoke-virtual {v3}, Lerg;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/telecom/StatusHints;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 358
    const-string v3, "Babel_telephony"

    if-nez v0, :cond_6

    .line 359
    const-string v0, "0"

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleWifiCall.updateStatusHints, label: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", icon: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 358
    invoke-static {v3, v0, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0, v6}, Lerg;->setStatusHints(Landroid/telecom/StatusHints;)V

    goto/16 :goto_0

    .line 329
    :cond_3
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 330
    sget v2, Laal;->qm:I

    .line 331
    const-string v0, "phone"

    .line 332
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 333
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    .line 335
    invoke-static {v6}, Laal;->l(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 336
    sget v0, Laal;->qP:I

    .line 340
    :goto_4
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Laal;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    .line 341
    invoke-static {v6}, Laal;->k(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v9

    .line 340
    invoke-virtual {v4, v0, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v10, v2

    move-object v2, v0

    move v0, v10

    goto/16 :goto_1

    .line 338
    :cond_4
    sget v0, Laal;->qA:I

    goto :goto_4

    .line 351
    :cond_5
    sget v0, Laal;->qn:I

    goto/16 :goto_2

    .line 359
    :cond_6
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_7
    move v0, v1

    move-object v2, v3

    goto/16 :goto_1
.end method

.method b(I)V
    .locals 5

    .prologue
    .line 151
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.cancelIncomingCall, dismissReason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 154
    const/4 v0, 0x4

    .line 155
    :goto_0
    new-instance v2, Landroid/telecom/DisconnectCause;

    const-string v3, "cancel ring, dismiss reason: "

    .line 1224
    packed-switch p1, :pswitch_data_0

    .line 1236
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x3f

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "HangoutInviteNotification.UNEXPECTED_DISSMIS_REASON_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-direct {v2, v0, v1}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    .line 155
    invoke-virtual {p0, v2}, Leua;->a(Landroid/telecom/DisconnectCause;)V

    .line 157
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    .line 1226
    :pswitch_0
    const-string v1, "UNKNOWN"

    goto :goto_1

    .line 1228
    :pswitch_1
    const-string v1, "USER_RESPONDED"

    goto :goto_1

    .line 1230
    :pswitch_2
    const-string v1, "USER_KICKED"

    goto :goto_1

    .line 1232
    :pswitch_3
    const-string v1, "INVITER_CANCELLED"

    goto :goto_1

    .line 1234
    :pswitch_4
    const-string v1, "INVITE_TIMEOUT"

    goto :goto_1

    .line 156
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b(II)V
    .locals 7

    .prologue
    const/16 v6, 0x4b

    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 528
    const-string v1, "Babel_telephony"

    const-string v2, "TeleWifiCall.onActivityTypeChanged, activityType: "

    .line 529
    invoke-static {p1}, Letv;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 528
    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    const-string v1, "babel_activity_handoff_allowed"

    .line 531
    invoke-static {v0, v1, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 535
    iget-object v1, p0, Leua;->a:Landroid/content/Context;

    const-string v2, "babel_biking_handoff_confidence_percentage_threshold"

    .line 536
    invoke-static {v1, v2, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 540
    iget-object v2, p0, Leua;->a:Landroid/content/Context;

    const-string v3, "babel_driving_handoff_confidence_percentage_threshold"

    .line 541
    invoke-static {v2, v3, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 546
    if-ne p1, v4, :cond_3

    if-lt p2, v1, :cond_3

    .line 548
    if-eqz v0, :cond_2

    .line 550
    const/16 v0, 0xb9d

    .line 548
    :goto_1
    invoke-static {v0}, Laal;->c(I)V

    .line 552
    invoke-direct {p0, v5}, Leua;->e(I)V

    .line 561
    :cond_0
    :goto_2
    return-void

    .line 529
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_2
    const/16 v0, 0xb9e

    goto :goto_1

    .line 553
    :cond_3
    if-nez p1, :cond_0

    if-lt p2, v2, :cond_0

    .line 555
    if-eqz v0, :cond_4

    .line 557
    const/16 v0, 0xb9f

    .line 555
    :goto_3
    invoke-static {v0}, Laal;->c(I)V

    .line 559
    invoke-direct {p0, v5}, Leua;->e(I)V

    goto :goto_2

    .line 558
    :cond_4
    const/16 v0, 0xba0

    goto :goto_3
.end method

.method public b(Leqt;)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Leua;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 484
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onPostDialContinue, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Leua;->s:Lesx;

    invoke-virtual {v0, p1}, Lesx;->a(Z)V

    .line 486
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 376
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.performManualHandoff, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    invoke-virtual {p0, v4}, Leua;->c(I)V

    .line 378
    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v0, v1, v4}, Leru;->a(Landroid/content/Context;Lerg;I)V

    .line 380
    return-void
.end method

.method c(I)V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Leua;->d:Lcgw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leua;->d:Lcgw;

    invoke-virtual {v0}, Lcgw;->q()Lhcs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Leua;->d:Lcgw;

    invoke-virtual {v0}, Lcgw;->q()Lhcs;

    move-result-object v0

    invoke-virtual {v0}, Lhcs;->k()Lhcw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhcw;->b(I)V

    .line 776
    :cond_0
    return-void
.end method

.method c(Z)Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 641
    const-string v0, "Babel_telephony"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x37

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TeleWifiCall.triggerNetworkSwitch, disconnectCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    iget-object v0, p0, Leua;->c:Lerg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leua;->d:Lcgw;

    if-nez v0, :cond_1

    .line 643
    :cond_0
    const-string v0, "Babel_telephony"

    const-string v3, "TeleWifiCall.triggerNetworkSwitch, call not ongoing"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 681
    :goto_0
    return v0

    .line 646
    :cond_1
    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->k(Landroid/content/Context;)Z

    move-result v3

    .line 647
    iget-object v0, p0, Leua;->r:Lequ;

    invoke-virtual {v0}, Lequ;->b()Lerc;

    move-result-object v4

    .line 648
    const-string v0, "Babel_telephony"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "TeleWifiCall.triggerNetworkSwitch, connectedToInternet : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    if-eqz v3, :cond_a

    .line 651
    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    const-string v5, "phone"

    .line 652
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 653
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    .line 654
    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    invoke-static {v0}, Leuh;->a(Landroid/content/Context;)Leum;

    move-result-object v6

    .line 4704
    iget-boolean v0, v6, Leum;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    iget-object v7, p0, Leua;->c:Lerg;

    .line 4706
    invoke-virtual {v7}, Lerg;->h()Lest;

    move-result-object v7

    .line 4705
    invoke-static {v0, v7, v6, v5}, Laal;->a(Landroid/content/Context;Lest;Leum;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4707
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4708
    const-string v0, "Babel_telephony"

    const-string v7, "TeleWifiCall.triggerWifiSwitch, falling back to wifi"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4709
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0, v2}, Lerg;->b(Z)V

    .line 4710
    invoke-virtual {p0}, Leua;->b()V

    .line 4711
    const/16 v0, 0xb57

    invoke-static {v0}, Laal;->c(I)V

    move v0, v1

    .line 655
    :goto_1
    if-eqz v0, :cond_4

    move v0, v1

    .line 656
    goto/16 :goto_0

    .line 4715
    :cond_2
    invoke-virtual {p0}, Leua;->b()V

    move v0, v1

    .line 4716
    goto :goto_1

    :cond_3
    move v0, v2

    .line 4719
    goto :goto_1

    .line 5685
    :cond_4
    iget-boolean v0, v6, Leum;->a:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    iget-object v6, p0, Leua;->c:Lerg;

    .line 5686
    invoke-virtual {v6}, Lerg;->h()Lest;

    move-result-object v6

    invoke-virtual {v6}, Lest;->c()I

    move-result v6

    iget-object v7, p0, Leua;->c:Lerg;

    invoke-virtual {v7}, Lerg;->g()Z

    move-result v7

    .line 6196
    const/16 v8, 0xd

    if-ne v5, v8, :cond_5

    .line 6197
    invoke-static {v0, v6, v7}, Laal;->a(Landroid/content/Context;IZ)Z

    move-result v8

    if-nez v8, :cond_6

    .line 6198
    :cond_5
    invoke-static {v5}, Laal;->l(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6199
    invoke-static {v0, v6, v7}, Laal;->b(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v1

    .line 5685
    :goto_2
    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    .line 5687
    invoke-virtual {v4}, Lerc;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5688
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->v()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5689
    const-string v0, "Babel_telephony"

    const-string v5, "TeleWifiCall.onWifiStateChanged, falling back to Data"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5690
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0, v1}, Lerg;->b(Z)V

    .line 5691
    invoke-virtual {p0}, Leua;->b()V

    .line 5692
    const/16 v0, 0xb56

    invoke-static {v0}, Laal;->c(I)V

    move v0, v1

    .line 658
    :goto_3
    if-eqz v0, :cond_a

    move v0, v1

    .line 659
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 6199
    goto :goto_2

    .line 5696
    :cond_8
    invoke-virtual {p0}, Leua;->b()V

    move v0, v1

    .line 5697
    goto :goto_3

    :cond_9
    move v0, v2

    .line 5700
    goto :goto_3

    .line 662
    :cond_a
    if-nez p1, :cond_b

    if-nez v3, :cond_d

    .line 665
    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lerc;->a()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    iget-object v3, p0, Leua;->c:Lerg;

    .line 666
    invoke-virtual {v3}, Lerg;->j()Leqs;

    move-result-object v3

    iget-object v4, p0, Leua;->c:Lerg;

    .line 667
    invoke-virtual {v4}, Lerg;->u()Z

    move-result v4

    .line 666
    invoke-static {v0, v3, v2, v9, v4}, Leru;->a(Landroid/content/Context;Leqs;ZIZ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 668
    const-string v0, "Babel_telephony"

    const-string v3, "TeleWifiCall.triggerNetworkSwitch, handing off to circuit switched"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    invoke-direct {p0, v9}, Leua;->e(I)V

    move v0, v1

    .line 670
    goto/16 :goto_0

    .line 672
    :cond_c
    const-string v0, "Babel_telephony"

    const-string v3, "TeleWifiCall.triggerNetworkSwitch, cannot handoff to ciruit switched"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    :cond_d
    if-eqz p1, :cond_e

    .line 677
    const-string v0, "Babel_telephony"

    const-string v3, "TeleWifiCall.triggerNetworkSwitch, calling exitHangout"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    const/16 v0, 0x3eb

    invoke-direct {p0, v0}, Leua;->f(I)V

    move v0, v1

    .line 679
    goto/16 :goto_0

    :cond_e
    move v0, v2

    .line 681
    goto/16 :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x2

    return v0
.end method

.method d(I)Landroid/telecom/DisconnectCause;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x1b

    .line 852
    new-instance v0, Landroid/telecom/DisconnectCause;

    .line 853
    invoke-static {p1}, Laal;->j(I)I

    move-result v1

    iget-object v2, p0, Leua;->a:Landroid/content/Context;

    .line 6294
    sparse-switch p1, :sswitch_data_0

    move-object v2, v3

    .line 856
    :goto_0
    invoke-static {p1}, Laal;->i(I)Ljava/lang/String;

    move-result-object v4

    .line 6352
    const/16 v6, 0x3eb

    if-eq p1, v6, :cond_0

    const/16 v6, 0x3fa

    if-ne p1, v6, :cond_2

    .line 6354
    :cond_0
    const/16 v5, 0x5f

    .line 857
    :cond_1
    :goto_1
    :pswitch_0
    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    return-object v0

    .line 6296
    :sswitch_0
    sget v4, Laal;->qT:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6307
    :sswitch_1
    sget v4, Laal;->qW:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6323
    :sswitch_2
    sget v4, Laal;->qU:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6326
    :sswitch_3
    sget v4, Laal;->qV:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6333
    :sswitch_4
    sget v4, Laal;->qR:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6336
    :sswitch_5
    sget v4, Laal;->qQ:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6340
    :sswitch_6
    sget v4, Laal;->qS:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6343
    :sswitch_7
    sget v4, Laal;->qZ:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6355
    :cond_2
    const/16 v6, 0x3f4

    if-eq p1, v6, :cond_1

    .line 6359
    invoke-static {p1}, Laal;->j(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 6370
    :pswitch_1
    const/4 v5, -0x1

    goto :goto_1

    .line 6366
    :pswitch_2
    const/16 v5, 0x11

    goto :goto_1

    .line 6294
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x1a -> :sswitch_2
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_4
        0x3f0 -> :sswitch_5
        0x3f2 -> :sswitch_6
        0x3f3 -> :sswitch_6
        0x3f4 -> :sswitch_2
        0x3f5 -> :sswitch_2
        0x3f6 -> :sswitch_7
        0x3fa -> :sswitch_4
    .end sparse-switch

    .line 6359
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Leua;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 4

    .prologue
    .line 416
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onStopDtmfTone, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 425
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onDisconnect, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    const/16 v0, 0x3ec

    invoke-direct {p0, v0}, Leua;->f(I)V

    .line 427
    return-void
.end method

.method public h()V
    .locals 4

    .prologue
    .line 431
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onSeparate, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    return-void
.end method

.method public i()V
    .locals 4

    .prologue
    .line 437
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onAbort, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    invoke-virtual {p0}, Leua;->g()V

    .line 439
    return-void
.end method

.method public j()V
    .locals 4

    .prologue
    .line 443
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onHold, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->setOnHold()V

    .line 448
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Leua;->d(Z)V

    .line 450
    :cond_0
    return-void
.end method

.method public k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 454
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onUnhold, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 458
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->setActive()V

    .line 459
    invoke-direct {p0, v4}, Leua;->d(Z)V

    .line 461
    :cond_0
    return-void
.end method

.method public l()V
    .locals 4

    .prologue
    .line 465
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onAnswer, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    iget-object v0, p0, Leua;->m:Leue;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Leua;->m:Leue;

    invoke-virtual {v0}, Leue;->a()V

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Leua;->m:Leue;

    .line 470
    :cond_0
    return-void
.end method

.method public m()V
    .locals 4

    .prologue
    .line 474
    const-string v0, "Babel_telephony"

    iget-object v1, p0, Leua;->c:Lerg;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleWifiCall.onReject, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Leua;->m:Leue;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Leua;->m:Leue;

    invoke-virtual {v0}, Leue;->b()V

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Leua;->m:Leue;

    .line 479
    :cond_0
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x6

    const-string v2, "incoming request ignored"

    invoke-direct {v0, v1, v2}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Leua;->a(Landroid/telecom/DisconnectCause;)V

    .line 480
    return-void
.end method

.method public n()Lcgw;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Leua;->d:Lcgw;

    return-object v0
.end method

.method o()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Leua;->d(Z)V

    .line 191
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Leua;->d:Lcgw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leua;->d:Lcgw;

    invoke-virtual {v0}, Lcgw;->q()Lhcs;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Leua;->d:Lcgw;

    invoke-virtual {v0}, Lcgw;->q()Lhcs;

    move-result-object v0

    invoke-virtual {v0}, Lhcs;->h()Ljava/lang/String;

    move-result-object v0

    .line 593
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 962
    const-string v0, "Babel_telephony"

    const-string v1, "TeleWifiCall.requestOutOfBandHandoffNumber"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    iget-object v0, p0, Leua;->c:Lerg;

    .line 7369
    invoke-virtual {v0}, Lerg;->s()Lero;

    move-result-object v1

    .line 7370
    if-eqz v1, :cond_2

    const-string v2, "nwc"

    .line 7371
    invoke-virtual {v1, v2}, Lero;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "no_handoff"

    .line 7372
    invoke-virtual {v1, v2}, Lero;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7373
    const-string v0, "Babel_telephony"

    const-string v1, "TeleUtils.getFromNumberForNewCall, not setting from number for experiment."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7374
    const/4 v0, 0x0

    move-object v1, v0

    .line 964
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 965
    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    const-class v2, Leat;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leat;

    .line 966
    iget-object v2, p0, Leua;->i:Leuc;

    if-nez v2, :cond_0

    .line 967
    new-instance v2, Leuc;

    .line 8175
    invoke-direct {v2, p0}, Leuc;-><init>(Leua;)V

    .line 967
    iput-object v2, p0, Leua;->i:Leuc;

    .line 968
    iget-object v2, p0, Leua;->i:Leuc;

    invoke-interface {v0, v2}, Leat;->a(Leap;)V

    .line 970
    :cond_0
    iget-object v0, p0, Leua;->c:Lerg;

    invoke-virtual {v0}, Lerg;->o()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    .line 971
    iget-object v0, p0, Leua;->a:Landroid/content/Context;

    const-class v3, Lbcm;

    .line 972
    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbcm;

    new-instance v3, Leqq;

    iget-object v4, p0, Leua;->c:Lerg;

    .line 976
    invoke-virtual {v4}, Lerg;->p()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Leua;->c:Lerg;

    .line 977
    invoke-virtual {v5}, Lerg;->r()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5, v1}, Leqq;-><init>(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-interface {v0, v3}, Lbcm;->a(Lbcn;)Lbcg;

    move-result-object v0

    .line 979
    invoke-virtual {v0}, Lbcg;->a()I

    move-result v0

    iput v0, p0, Leua;->j:I

    .line 981
    :cond_1
    return-void

    .line 7376
    :cond_2
    invoke-virtual {v0}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v0

    invoke-static {v0}, Laal;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method
