.class public Lorg/chromium/net/CronetEngine$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmoc;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/net/CronetEngine$Builder$Pkp;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:I

.field private r:J

.field private s:Ljava/lang/String;

.field private t:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "^[0-9\\.]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/CronetEngine$Builder;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->c:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->d:Ljava/util/List;

    .line 108
    iput-object p1, p0, Lorg/chromium/net/CronetEngine$Builder;->b:Landroid/content/Context;

    .line 109
    const-string v0, "cronet"

    invoke-virtual {p0, v0}, Lorg/chromium/net/CronetEngine$Builder;->c(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;

    .line 110
    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->d()Lorg/chromium/net/CronetEngine$Builder;

    .line 111
    invoke-virtual {p0, v2}, Lorg/chromium/net/CronetEngine$Builder;->a(Z)Lorg/chromium/net/CronetEngine$Builder;

    .line 112
    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->h()Lorg/chromium/net/CronetEngine$Builder;

    .line 113
    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->j()Lorg/chromium/net/CronetEngine$Builder;

    .line 114
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lorg/chromium/net/CronetEngine$Builder;->a(IJ)Lorg/chromium/net/CronetEngine$Builder;

    .line 115
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->b:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/net/UserAgent;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(IJ)Lorg/chromium/net/CronetEngine$Builder;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 340
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-ne p1, v3, :cond_1

    .line 341
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Storage path must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Storage path must not be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_2
    if-eqz p1, :cond_3

    if-ne p1, v3, :cond_4

    :cond_3
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/net/CronetEngine$Builder;->p:Z

    .line 351
    iput-wide p2, p0, Lorg/chromium/net/CronetEngine$Builder;->r:J

    .line 353
    packed-switch p1, :pswitch_data_0

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown cache mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    .line 349
    goto :goto_0

    .line 355
    :pswitch_0
    iput v1, p0, Lorg/chromium/net/CronetEngine$Builder;->q:I

    .line 367
    :goto_1
    return-object p0

    .line 359
    :pswitch_1
    iput v2, p0, Lorg/chromium/net/CronetEngine$Builder;->q:I

    goto :goto_1

    .line 362
    :pswitch_2
    iput v3, p0, Lorg/chromium/net/CronetEngine$Builder;->q:I

    goto :goto_1

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lorg/chromium/net/CronetEngine$Builder;->e:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public a(Z)Lorg/chromium/net/CronetEngine$Builder;
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lorg/chromium/net/CronetEngine$Builder;->i:Z

    .line 201
    return-object p0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Storage path must be set to existing directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iput-object p1, p0, Lorg/chromium/net/CronetEngine$Builder;->f:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->f:Ljava/lang/String;

    return-object v0
.end method

.method c(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lorg/chromium/net/CronetEngine$Builder;->h:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public d()Lorg/chromium/net/CronetEngine$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/CronetEngine$Builder;->g:Z

    .line 174
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x1bb

    .line 394
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal QUIC Hint Host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->c:Ljava/util/List;

    new-instance v1, Lmoc;

    invoke-direct {v1, p1, v2, v2}, Lmoc;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    return-object p0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lorg/chromium/net/CronetEngine$Builder;->g:Z

    return v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->h:Ljava/lang/String;

    return-object v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lorg/chromium/net/CronetEngine$Builder;->i:Z

    return v0
.end method

.method public h()Lorg/chromium/net/CronetEngine$Builder;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/CronetEngine$Builder;->j:Z

    .line 215
    return-object p0
.end method

.method i()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lorg/chromium/net/CronetEngine$Builder;->j:Z

    return v0
.end method

.method public j()Lorg/chromium/net/CronetEngine$Builder;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/CronetEngine$Builder;->k:Z

    .line 231
    return-object p0
.end method

.method k()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lorg/chromium/net/CronetEngine$Builder;->k:Z

    return v0
.end method

.method l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->l:Ljava/lang/String;

    return-object v0
.end method

.method m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->m:Ljava/lang/String;

    return-object v0
.end method

.method n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->n:Ljava/lang/String;

    return-object v0
.end method

.method o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->o:Ljava/lang/String;

    return-object v0
.end method

.method p()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lorg/chromium/net/CronetEngine$Builder;->p:Z

    return v0
.end method

.method q()J
    .locals 2

    .prologue
    .line 375
    iget-wide v0, p0, Lorg/chromium/net/CronetEngine$Builder;->r:J

    return-wide v0
.end method

.method r()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lorg/chromium/net/CronetEngine$Builder;->q:I

    return v0
.end method

.method s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmoc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->c:Ljava/util/List;

    return-object v0
.end method

.method t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/net/CronetEngine$Builder$Pkp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->d:Ljava/util/List;

    return-object v0
.end method

.method u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->s:Ljava/lang/String;

    return-object v0
.end method

.method v()J
    .locals 2

    .prologue
    .line 532
    iget-wide v0, p0, Lorg/chromium/net/CronetEngine$Builder;->t:J

    return-wide v0
.end method

.method w()Landroid/content/Context;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder;->b:Landroid/content/Context;

    return-object v0
.end method

.method public x()Lorg/chromium/net/CronetEngine;
    .locals 4

    .prologue
    .line 1854
    const/4 v0, 0x0

    .line 1855
    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1856
    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/chromium/net/CronetEngine$Builder;->a(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;

    .line 1858
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1859
    invoke-static {p0}, Lorg/chromium/net/CronetEngine;->a(Lorg/chromium/net/CronetEngine$Builder;)Lorg/chromium/net/CronetEngine;

    move-result-object v0

    .line 1861
    :cond_1
    if-nez v0, :cond_2

    .line 1862
    new-instance v0, Lmpb;

    invoke-virtual {p0}, Lorg/chromium/net/CronetEngine$Builder;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmpb;-><init>(Ljava/lang/String;)V

    .line 1864
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using network stack: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/chromium/net/CronetEngine;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/chromium/net/CronetEngine$Builder;->t:J

    .line 552
    return-object v0
.end method
