.class public Ldoe;
.super Ldnz;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ldnz;-><init>()V

    .line 75
    iput-object p1, p0, Ldoe;->a:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lkhv;

    invoke-direct {v0}, Lkhv;-><init>()V

    .line 81
    iget-object v1, p0, Ldoe;->h:Lfak;

    invoke-static {p1, p2, p3, v1}, Ldon;->a(Ljava/lang/String;IILfak;)Lkdo;

    move-result-object v1

    iput-object v1, v0, Lkhv;->requestHeader:Lkdo;

    .line 83
    iget-object v1, p0, Ldoe;->a:Ljava/lang/String;

    iput-object v1, v0, Lkhv;->a:Ljava/lang/String;

    .line 84
    return-object v0
.end method

.method public a(Lcwk;Ldvn;)Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "hangouts/query"

    return-object v0
.end method
