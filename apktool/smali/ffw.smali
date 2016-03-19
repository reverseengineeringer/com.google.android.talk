.class public final Lffw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lgrp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lgrp;

    invoke-direct {v0}, Lgrp;-><init>()V

    invoke-direct {p0, v0}, Lffw;-><init>(Lgrp;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Lgrp;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lffw;->a:Lgrp;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lgrp;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lffw;->a:Lgrp;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lffw;->a:Lgrp;

    const-string v1, "6"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;I)V

    .line 89
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lffw;->a:Lgrp;

    const-string v1, "12"

    invoke-virtual {v0, v1, p1, p2}, Lgrp;->a(Ljava/lang/String;J)V

    .line 64
    return-void
.end method

.method public a(Lemc;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lffw;->a:Lgrp;

    const-string v1, "24"

    invoke-virtual {p1}, Lemc;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lgrp;->a(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method public a(Lemd;)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lffw;->a:Lgrp;

    const-string v1, "15"

    invoke-virtual {p1}, Lemd;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lgrp;->a(Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lffw;->a:Lgrp;

    const-string v1, "25"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lffw;->a:Lgrp;

    const-string v1, "22"

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2}, Lgrp;->a(Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lffw;->a:Lgrp;

    const-string v1, "26"

    invoke-virtual {v0, v1, p1, p2}, Lgrp;->a(Ljava/lang/String;J)V

    .line 81
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lffw;->a:Lgrp;

    const-string v1, "28"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lffw;->a:Lgrp;

    const-string v1, "18"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
