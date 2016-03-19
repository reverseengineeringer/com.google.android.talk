.class public final Lasj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajb",
        "<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;IILaja;)Lalr;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Ljava/io/File;

    .line 1022
    new-instance v0, Laqs;

    invoke-direct {v0, p1}, Laqs;-><init>(Ljava/io/File;)V

    .line 13
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Laja;)Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    return v0
.end method
