.class public final Lffv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lgrp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lgrp;

    invoke-direct {v0}, Lgrp;-><init>()V

    invoke-direct {p0, v0}, Lffv;-><init>(Lgrp;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lgrp;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lffv;->a:Lgrp;

    .line 37
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "18"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lgrp;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "22"

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2}, Lgrp;->a(Ljava/lang/String;I)V

    .line 117
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "26"

    invoke-virtual {v0, v1, p1, p2}, Lgrp;->a(Ljava/lang/String;J)V

    .line 85
    return-void
.end method

.method public a(Lcom/google/android/gms/wearable/Asset;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "5"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)V

    .line 73
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "7"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgrp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "16"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 53
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "11"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;Z)V

    .line 93
    return-void
.end method

.method public b()Lcom/google/android/gms/wearable/Asset;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lgrp;->g(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "34"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;I)V

    .line 125
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "18"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "30"

    invoke-virtual {v0, v1, p1}, Lgrp;->c(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 133
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "14"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;Z)V

    .line 97
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "26"

    invoke-virtual {v0, v1}, Lgrp;->e(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "23"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "33"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;Z)V

    .line 145
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "27"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lffv;->a:Lgrp;

    const-string v1, "31"

    invoke-virtual {v0, v1, p1}, Lgrp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method
