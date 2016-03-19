.class public Ldof;
.super Ldnz;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ldnz;-><init>()V

    .line 110
    iput-object p1, p0, Ldof;->a:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Ldof;->b:Ljava/lang/String;

    .line 112
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lkht;

    invoke-direct {v0}, Lkht;-><init>()V

    .line 117
    iget-object v1, p0, Ldof;->h:Lfak;

    invoke-static {p1, p2, p3, v1}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v1

    iput-object v1, v0, Lkht;->requestHeader:Lkdo;

    .line 119
    iget-object v1, p0, Ldof;->a:Ljava/lang/String;

    iput-object v1, v0, Lkht;->a:Ljava/lang/String;

    .line 120
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "hangout_participants/search"

    return-object v0
.end method
