.class public interface abstract Lhwi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Limw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Limw;

    const-string v1, "android_dump"

    invoke-direct {v0, v1}, Limw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhwi;->a:Limw;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/PrintWriter;)V
.end method
