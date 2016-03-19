.class public final Laxo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:Laxp;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method


# virtual methods
.method public a()Laxn;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Laxn;

    invoke-direct {v0, p0}, Laxn;-><init>(Laxo;)V

    return-object v0
.end method

.method public a(Laxn;)Laxo;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p1}, Laxn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p1}, Laxn;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laxo;->a(Ljava/lang/String;)Laxo;

    .line 169
    :cond_0
    invoke-virtual {p1}, Laxn;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p1}, Laxn;->d()Ljava/lang/String;

    move-result-object v0

    .line 1195
    iput-object v0, p0, Laxo;->b:Ljava/lang/String;

    .line 172
    :cond_1
    invoke-virtual {p1}, Laxn;->e()I

    move-result v0

    if-lez v0, :cond_2

    .line 173
    invoke-virtual {p1}, Laxn;->e()I

    move-result v0

    .line 1204
    iput v0, p0, Laxo;->c:I

    .line 175
    :cond_2
    invoke-virtual {p1}, Laxn;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    invoke-virtual {p1}, Laxn;->g()Laxp;

    move-result-object v0

    .line 1209
    iput-object v0, p0, Laxo;->d:Laxp;

    .line 178
    :cond_3
    return-object p0
.end method

.method public a(Ljava/lang/String;)Laxo;
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Laxo;->a:Ljava/lang/String;

    .line 187
    return-object p0
.end method
