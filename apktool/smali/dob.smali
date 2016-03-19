.class public Ldob;
.super Ldnz;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ldnz;-><init>()V

    .line 188
    iput p1, p0, Ldob;->a:I

    .line 189
    iput p3, p0, Ldob;->c:I

    .line 190
    iput-object p2, p0, Ldob;->b:Ljava/lang/String;

    .line 191
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    const-string v0, "ui_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 3

    .prologue
    .line 195
    new-instance v0, Lkhg;

    invoke-direct {v0}, Lkhg;-><init>()V

    .line 196
    iget-object v1, p0, Ldob;->h:Lfak;

    invoke-static {p1, p2, p3, v1}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v1

    iput-object v1, v0, Lkhg;->requestHeader:Lkdo;

    .line 198
    new-instance v1, Lkhf;

    invoke-direct {v1}, Lkhf;-><init>()V

    .line 199
    iget v2, p0, Ldob;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lkhf;->b:Ljava/lang/Integer;

    .line 200
    iget v2, p0, Ldob;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lkhf;->o:Ljava/lang/Integer;

    .line 201
    iget-object v2, p0, Ldob;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Ldob;->b:Ljava/lang/String;

    iput-object v2, v1, Lkhf;->i:Ljava/lang/String;

    .line 204
    :cond_0
    iput-object v1, v0, Lkhg;->a:Lkhf;

    .line 205
    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Lcgw;->E()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "hangouts/add"

    return-object v0
.end method
