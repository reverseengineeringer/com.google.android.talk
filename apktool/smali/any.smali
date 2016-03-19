.class public final Lany;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lapg",
        "<[BTData;>;"
    }
.end annotation


# instance fields
.field private final a:Laob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laob",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laob",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lany;->a:Laob;

    .line 27
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;IILaja;)Laph;
    .locals 4

    .prologue
    .line 22
    check-cast p1, [B

    .line 1033
    new-instance v0, Laph;

    .line 2014
    sget-object v1, Lavd;->b:Lavd;

    .line 1033
    new-instance v2, Laoc;

    iget-object v3, p0, Lany;->a:Laob;

    invoke-direct {v2, p1, v3}, Laoc;-><init>([BLaob;)V

    invoke-direct {v0, v1, v2}, Laph;-><init>(Laiw;Lajf;)V

    .line 22
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method
