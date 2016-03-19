.class public Lhtu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field e:Lhtv;

.field f:I

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget v0, Lhut;->c:I

    iput v0, p0, Lhtu;->f:I

    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lhtu;->a:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lhtu;->b:Ljava/lang/String;

    .line 69
    if-nez p2, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BackgroundTask tag cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lhtu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 1012
    invoke-direct {p0, p1}, Lhtu;-><init>(Ljava/lang/String;)V

    .line 1013
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 0

    .prologue
    .line 2012
    invoke-direct {p0, p1}, Lhtu;-><init>(Ljava/lang/String;)V

    .line 2013
    return-void
.end method


# virtual methods
.method public a()Lhus;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Lhus;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 271
    iput p1, p0, Lhtu;->c:I

    .line 272
    return-void
.end method

.method a(Lhtv;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lhtu;->e:Lhtv;

    .line 280
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 202
    if-nez p1, :cond_0

    iget-object v0, p0, Lhtu;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Laen;->a(Z)V

    .line 203
    if-eqz p1, :cond_3

    .line 204
    :goto_1
    iget-boolean v0, p0, Lhtu;->g:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lhtu;->h:I

    if-nez v0, :cond_1

    .line 205
    invoke-static {p1}, Lhuq;->a(Landroid/content/Context;)Lhuq;

    move-result-object v0

    invoke-virtual {v0}, Lhuq;->a()I

    move-result v0

    iput v0, p0, Lhtu;->h:I

    .line 207
    :cond_1
    return-void

    .line 202
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 203
    :cond_3
    iget-object p1, p0, Lhtu;->a:Landroid/content/Context;

    goto :goto_1
.end method

.method public d()Landroid/content/Context;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lhtu;->a:Landroid/content/Context;

    const-string v1, "Either use the Context provided in doInBackground(), or if you\'re using deprecated methods, pass a Context into the BackgrounTask\'s constructor"

    invoke-static {v0, v1}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p0}, Lhtu;->e()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 210
    if-nez p1, :cond_0

    iget-object v0, p0, Lhtu;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Laen;->a(Z)V

    .line 211
    if-eqz p1, :cond_3

    .line 212
    :goto_1
    iget v0, p0, Lhtu;->h:I

    if-eqz v0, :cond_1

    .line 213
    invoke-static {p1}, Lhuq;->a(Landroid/content/Context;)Lhuq;

    move-result-object v0

    iget v1, p0, Lhtu;->h:I

    invoke-virtual {v0, v1}, Lhuq;->a(I)V

    .line 215
    :cond_1
    return-void

    .line 210
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_3
    iget-object p1, p0, Lhtu;->a:Landroid/content/Context;

    goto :goto_1
.end method

.method e()Landroid/content/Context;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lhtu;->a:Landroid/content/Context;

    return-object v0
.end method

.method public f()Lhtu;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhtu;->d:Z

    .line 167
    return-object p0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lhtu;->d:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lhtu;->b:Ljava/lang/String;

    return-object v0
.end method

.method i()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lhtu;->c:I

    return v0
.end method

.method public m_()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method
