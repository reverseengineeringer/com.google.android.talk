.class public interface abstract Liso;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Liso;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lisp;

    invoke-direct {v0}, Lisp;-><init>()V

    sput-object v0, Liso;->a:Liso;

    return-void
.end method


# virtual methods
.method public abstract a(J)V
.end method
