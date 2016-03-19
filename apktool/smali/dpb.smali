.class public Ldpb;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2481
    invoke-direct {p0}, Ldpf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2506
    const-string v0, "ui_queue"

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Llyi;
    .locals 7

    .prologue
    .line 2492
    new-instance v6, Lkal;

    invoke-direct {v6}, Lkal;-><init>()V

    .line 2494
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v5, p0, Ldpb;->h:Lfak;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Ldon;->a(Ljxk;ZLjava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v6, Lkal;->requestHeader:Lkdo;

    .line 2496
    return-object v6
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2501
    const-string v0, "contacts/getfavorites"

    return-object v0
.end method
