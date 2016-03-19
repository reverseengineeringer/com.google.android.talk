.class public interface abstract Lhbj;
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
        "Lkja;",
        "Lkjg;",
        "Lkjh;",
        "Lkji;",
        "Lkjj;",
        "Lkjk;",
        "Lkjl;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lhbq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhbq",
            "<",
            "Lkja;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lhbk;

    invoke-direct {v0}, Lhbk;-><init>()V

    sput-object v0, Lhbj;->a:Lhbq;

    return-void
.end method
