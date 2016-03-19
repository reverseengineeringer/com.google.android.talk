.class public final Lcsn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:I

.field public d:J

.field public e:I

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Lbgc;

.field public l:Ljava/lang/Boolean;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:I

.field public q:Lkky;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcsn;->p:I

    .line 41
    return-void
.end method


# virtual methods
.method public a()Lcsn;
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput v0, p0, Lcsn;->o:I

    .line 199
    return-object p0
.end method

.method public a(I)Lcsn;
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcsn;->c:I

    .line 89
    return-object p0
.end method

.method public a(J)Lcsn;
    .locals 1

    .prologue
    .line 70
    iput-wide p1, p0, Lcsn;->a:J

    .line 71
    return-object p0
.end method

.method public a(Lbgc;)Lcsn;
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcsn;->k:Lbgc;

    .line 160
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcsn;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcsn;->b:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public a(Lkky;)Lcsn;
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcsn;->q:Lkky;

    .line 214
    return-object p0
.end method

.method public a(Z)Lcsn;
    .locals 1

    .prologue
    .line 114
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcsn;->f:Ljava/lang/Boolean;

    .line 115
    return-object p0
.end method

.method public b()Lcsn;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x3

    iput v0, p0, Lcsn;->p:I

    .line 209
    return-object p0
.end method

.method public b(I)Lcsn;
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcsn;->e:I

    .line 107
    return-object p0
.end method

.method public b(J)Lcsn;
    .locals 1

    .prologue
    .line 97
    iput-wide p1, p0, Lcsn;->d:J

    .line 98
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcsn;
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcsn;->g:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public b(Z)Lcsn;
    .locals 1

    .prologue
    .line 168
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcsn;->l:Ljava/lang/Boolean;

    .line 169
    return-object p0
.end method

.method public c(I)Lcsn;
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Lcsn;->n:I

    .line 189
    return-object p0
.end method

.method public c(J)Lcsn;
    .locals 1

    .prologue
    .line 141
    iput-wide p1, p0, Lcsn;->i:J

    .line 142
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcsn;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcsn;->h:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcsn;
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcsn;->j:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcsn;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcsn;->m:Ljava/lang/String;

    .line 179
    return-object p0
.end method
