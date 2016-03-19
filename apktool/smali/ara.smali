.class public final Lara;
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
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Larm;


# direct methods
.method public constructor <init>(Larm;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lara;->a:Larm;

    .line 22
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;IILaja;)Lalr;
    .locals 2

    .prologue
    .line 17
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 1032
    invoke-static {p1}, Lavh;->b(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object v0

    .line 1033
    iget-object v1, p0, Lara;->a:Larm;

    invoke-virtual {v1, v0, p2, p3, p4}, Larm;->a(Ljava/io/InputStream;IILaja;)Lalr;

    move-result-object v0

    .line 17
    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;Laja;)Z
    .locals 1

    .prologue
    .line 2026
    invoke-static {}, Larm;->b()Z

    move-result v0

    .line 17
    return v0
.end method
