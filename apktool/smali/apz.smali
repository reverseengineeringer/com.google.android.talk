.class public final Lapz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lapg",
        "<TModel;TModel;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILaja;)Laph;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Laja;",
            ")",
            "Laph",
            "<TModel;>;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Laph;

    new-instance v1, Lavf;

    invoke-direct {v1, p1}, Lavf;-><init>(Ljava/lang/Object;)V

    new-instance v2, Laqb;

    invoke-direct {v2, p1}, Laqb;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Laph;-><init>(Laiw;Lajf;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method
