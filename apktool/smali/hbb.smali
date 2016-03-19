.class public interface abstract Lhbb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhbm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhbm",
        "<",
        "Lkgd;",
        "Lkgn;",
        "Lkgo;",
        "Lkgp;",
        "Lkgq;",
        "Lkgt;",
        "Lkgu;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lhbq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhbq",
            "<",
            "Lkgd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lhbc;

    invoke-direct {v0}, Lhbc;-><init>()V

    sput-object v0, Lhbb;->a:Lhbq;

    return-void
.end method
