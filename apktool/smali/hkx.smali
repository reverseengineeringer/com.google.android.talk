.class public final Lhkx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Lkhk;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lhkx;->a:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lhkx;->b:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lhkx;->c:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lhkx;->d:Z

    .line 27
    iput-boolean v1, p0, Lhkx;->e:Z

    .line 30
    iput-boolean v2, p0, Lhkx;->f:Z

    .line 33
    iput-boolean v2, p0, Lhkx;->g:Z

    .line 36
    iput-boolean v2, p0, Lhkx;->h:Z

    .line 39
    iput-object v0, p0, Lhkx;->i:Ljava/lang/String;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhkx;->j:J

    .line 50
    iput-boolean v2, p0, Lhkx;->k:Z

    .line 53
    iput-boolean v2, p0, Lhkx;->l:Z

    .line 56
    iput-boolean v2, p0, Lhkx;->m:Z

    .line 59
    iput-boolean v2, p0, Lhkx;->n:Z

    .line 62
    iput-boolean v2, p0, Lhkx;->o:Z

    .line 65
    iput-boolean v2, p0, Lhkx;->p:Z

    .line 78
    return-void
.end method


# virtual methods
.method public a(I)Lhkx;
    .locals 0

    .prologue
    .line 253
    iput p1, p0, Lhkx;->q:I

    .line 254
    return-object p0
.end method

.method public a(J)Lhkx;
    .locals 1

    .prologue
    .line 162
    iput-wide p1, p0, Lhkx;->j:J

    .line 163
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lhkx;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lhkx;->a:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public a(Lkhk;)Lhkx;
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lhkx;->r:Lkhk;

    .line 263
    return-object p0
.end method

.method public a(Z)Lhkx;
    .locals 0

    .prologue
    .line 116
    iput-boolean p1, p0, Lhkx;->d:Z

    .line 117
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lhkx;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lhkx;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lhkx;->b:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public b(Z)Lhkx;
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lhkx;->e:Z

    .line 127
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lhkx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lhkx;
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lhkx;->c:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public c(Z)Lhkx;
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lhkx;->k:Z

    .line 173
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lhkx;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lhkx;
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lhkx;->i:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public d(Z)Lhkx;
    .locals 0

    .prologue
    .line 192
    iput-boolean p1, p0, Lhkx;->m:Z

    .line 193
    return-object p0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lhkx;->d:Z

    return v0
.end method

.method public e(Z)Lhkx;
    .locals 0

    .prologue
    .line 202
    iput-boolean p1, p0, Lhkx;->n:Z

    .line 203
    return-object p0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lhkx;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 275
    instance-of v2, p1, Lhkx;

    if-nez v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 278
    :cond_1
    check-cast p1, Lhkx;

    .line 279
    invoke-virtual {p0}, Lhkx;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lhkx;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 280
    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p0}, Lhkx;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 283
    invoke-virtual {p0}, Lhkx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f()Lhkx;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhkx;->f:Z

    .line 137
    return-object p0
.end method

.method public f(Z)Lhkx;
    .locals 0

    .prologue
    .line 212
    iput-boolean p1, p0, Lhkx;->o:Z

    .line 213
    return-object p0
.end method

.method public g(Z)Lhkx;
    .locals 0

    .prologue
    .line 226
    iput-boolean p1, p0, Lhkx;->p:Z

    .line 227
    return-object p0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lhkx;->f:Z

    return v0
.end method

.method public h(Z)Lhkx;
    .locals 0

    .prologue
    .line 235
    iput-boolean p1, p0, Lhkx;->g:Z

    .line 236
    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lhkx;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 167
    iget-wide v0, p0, Lhkx;->j:J

    return-wide v0
.end method

.method public i(Z)Lhkx;
    .locals 0

    .prologue
    .line 244
    iput-boolean p1, p0, Lhkx;->h:Z

    .line 245
    return-object p0
.end method

.method public j()Lhkx;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhkx;->l:Z

    .line 183
    return-object p0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lhkx;->n:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lhkx;->o:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lhkx;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lhkx;->p:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lhkx;->g:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lhkx;->h:Z

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lhkx;->q:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Participant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lhkx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n userId: "

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhkx;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isLoudestSpeaker: "

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhkx;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n connectionTime: "

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lhkx;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isAudioMuted: "

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lhkx;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isVideoMuted: "

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lhkx;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isLocalUser: "

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lhkx;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isLoudestSpeaker: "

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lhkx;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isPresenter: "

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lhkx;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isPinned: "

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lhkx;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isFocused: "

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lhkx;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isPstn: "

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lhkx;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isMediaBlocked: "

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lhkx;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isAllowedToInvite: "

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lhkx;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n isAllowedToKick: "

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lhkx;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
