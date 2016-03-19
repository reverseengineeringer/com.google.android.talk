.class public final Lajs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laji;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laji",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lamg;


# direct methods
.method public constructor <init>(Lamg;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lajs;->a:Lamg;

    .line 44
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Lajh;
    .locals 2

    .prologue
    .line 39
    check-cast p1, Ljava/io/InputStream;

    .line 1048
    new-instance v0, Lajr;

    iget-object v1, p0, Lajs;->a:Lamg;

    invoke-direct {v0, p1, v1}, Lajr;-><init>(Ljava/io/InputStream;Lamg;)V

    .line 39
    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method
