.class public interface abstract Lhbd;
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
        "Lkgy;",
        "Lkgz;",
        "Lkha;",
        "Llyi;",
        "Llyi;",
        "Lkhb;",
        "Lkhc;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lhbq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhbq",
            "<",
            "Lkgy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lhbe;

    invoke-direct {v0}, Lhbe;-><init>()V

    sput-object v0, Lhbd;->a:Lhbq;

    return-void
.end method
